# https://github.com/mit-han-lab/smoothquant/blob/main/examples/smoothquant_llama_demo.ipynb
import os

# os.environ["CUDA_DEVICE_ORDER"] = "PCI_BUS_ID"
# os.environ["CUDA_VISIBLE_DEVICES"] = "0"

import torch
import torch.nn as nn
from transformers.models.llama.modeling_llama import (
    LlamaAttention,
    LlamaDecoderLayer,
    LlamaForCausalLM,
    LlamaMLP,
)

from transformers import LlamaTokenizer
# from smoothquant.smooth import smooth_lm
# from smoothquant.fake_quant import quantize_llama_like
import tqdm

import argparse
parser = argparse.ArgumentParser()
parser.add_argument('--model', help='model name', default="meta-llama/Llama-2-7b-hf")
parser.add_argument('--w_elem', help='weight format', default="int8")
parser.add_argument('--a_elem', help='activation format', default="int8")
parser.add_argument('--block_size', help='microscaling block size', default=32)
parser.add_argument('--scalar_format', help='fp or bfloat', default="bfloat")
parser.add_argument('--scalar_width', help='width of scalar elems', default=16)
parser.add_argument('--quantize_backprop', help='quantization of back prop (True or False)', default=False)

args = parser.parse_args()

class Evaluator:
    def __init__(self, dataset, tokenizer, device, n_samples=40):
        self.dataset = dataset
        self.tokenizer = tokenizer
        self.device = device

        self.dataset = tokenizer(
            "\n\n".join(dataset["text"]), return_tensors="pt"
        ).input_ids.to(device)

        self.n_samples = n_samples

    @torch.no_grad()
    def evaluate(self, model):
        model.eval()
        nlls = []
        for i in tqdm.tqdm(range(self.n_samples), desc="Evaluating..."):
            batch = self.dataset[:, (i * 2048) : ((i + 1) * 2048)].to(model.device)
            with torch.no_grad():
                lm_logits = model(batch).logits
            shift_logits = lm_logits[:, :-1, :].contiguous().float()
            shift_labels = self.dataset[:, (i * 2048) : ((i + 1) * 2048)][:, 1:]
            loss_fct = nn.CrossEntropyLoss()
            loss = loss_fct(
                shift_logits.view(-1, shift_logits.size(-1)), shift_labels.view(-1)
            )
            neg_log_likelihood = loss.float() * 2048
            nlls.append(neg_log_likelihood)

        return torch.exp(torch.stack(nlls).sum() / (self.n_samples * 2048))

from datasets import load_dataset

tokenizer = LlamaTokenizer.from_pretrained("meta-llama/Llama-2-7b-hf")
dataset = load_dataset('wikitext', 'wikitext-2-raw-v1', split='test')
evaluator = Evaluator(dataset, tokenizer, "cuda")

# MXFP imports
import torch
import torch.nn.functional as F
import numpy as np
import argparse
import sys
import os

microscaling = '../mx'
sys.path.append(os.path.dirname(os.path.expanduser(microscaling)))
# import finalize_mx_specs
# import mx_mapping

from mx import finalize_mx_specs
from mx import mx_mapping


# Simple MX spec for MXFP6 weights+activations
mx_specs = {
    'w_elem_format': args.w_elem,
    'a_elem_format': args.a_elem,
    'block_size': args.block_size,
    args.scalar_format: args.scalar_width,
    'custom_cuda': True,
    # For quantization-aware finetuning, do backward pass in FP32
    'quantize_backprop': args.quantize_backprop,
}
mx_specs = finalize_mx_specs(mx_specs)

# Auto-inject MX modules and functions
# This will replace certain torch.nn.* and torch.nn.functional.*
# modules/functions in the global namespace!
mx_mapping.inject_pyt_ops(mx_specs)

model = LlamaForCausalLM.from_pretrained(
    args.model, torch_dtype=torch.float16, device_map="auto"
)

ppl = evaluator.evaluate(model)
print(f"{args.model} {args.w_elem} {args.a_elem} {args.block_size} {args.scalar_format} {args.scalar_width} {args.quantize_backprop}")
print(f"perplexity: {ppl}")