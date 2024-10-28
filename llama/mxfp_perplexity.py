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

import random

import argparse
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', help='No quantization', default=False)
parser.add_argument('--model', help='model name', default="meta-llama/Llama-2-7b-hf")
parser.add_argument('--w_elem', help='weight format', default="int8")
parser.add_argument('--a_elem', help='activation format', default="int8")
parser.add_argument('--block_size', help='microscaling block size', default=32)
parser.add_argument('--scalar_format', help='fp or bfloat', default="fp")
parser.add_argument('--scalar_width', help='width of scalar elems', default=16)
# parser.add_argument('--change_block', help='test of blocking effects', default=False)
parser.add_argument('--quantize_backprop', help='quantization of back prop (True or False)', default=False)
parser.add_argument('--scale_bits', help='width of scalar elems', default=8)
parser.add_argument('--seqlen', help='sequence length', default=2048)

args = parser.parse_args()

device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
def get_wikitext2(nsamples, seed, seqlen, tokenizer):
    # Load train and test datasets
    traindata = load_dataset('wikitext', 'wikitext-2-raw-v1', split='train')
    testdata = load_dataset('wikitext', 'wikitext-2-raw-v1', split='test')

    # Encode datasets
    trainenc = tokenizer(" ".join(traindata['text']), return_tensors='pt')
    testenc = tokenizer("\n\n".join(testdata['text']), return_tensors='pt')

    # Generate samples from training set
    random.seed(seed)
    trainloader = []
    for _ in range(nsamples):
        i = random.randint(0, trainenc.input_ids.shape[1] - seqlen - 1)
        j = i + seqlen
        inp = trainenc.input_ids[:, i:j]
        tar = inp.clone()
        tar[:, :-1] = -100
        trainloader.append((inp, tar))
    return trainloader, testenc

def get_loaders(name, nsamples=128, seed=0, seqlen=2048, tokenizer=None):
    if 'wikitext2' in name:
        return get_wikitext2(nsamples, seed, seqlen, tokenizer)
    if "c4" in name:
        return get_c4(nsamples, seed, seqlen, tokenizer)

def eval_ppl(model, tokenizer, device=torch.device("cuda:0")):
    # Set dataset
    dataset = "wikitext2"

    # Print status
    print(f"evaluating on {dataset}")

    # Get the test loader
    _, testloader = get_loaders(
        dataset, seed=0, seqlen=4096, tokenizer=tokenizer 
    )

    # Evaluate ppl in no grad context to avoid updating the model
    with torch.no_grad():
        ppl_test = eval_ppl_wikitext(model, testloader, 1, device)
    return ppl_test 

# Function to evaluate perplexity (ppl) specifically on the wikitext dataset
def eval_ppl_wikitext(model, testenc, bs=1, device=None):
    # Get input IDs
    testenc = testenc.input_ids

    # Calculate number of samples
    nsamples = testenc.numel() // 4096

    # List to store negative log likelihoods
    nlls = []
    print(f"nsamples {nsamples}")

    # Loop through each batch
    for i in range(0,nsamples,bs):
        if i % 50 == 0:
            print(f"sample {i}")

        # Calculate end index
        j = min(i+bs, nsamples)

        # Prepare inputs and move to device
        inputs = testenc[:,(i * 4096):(j * 4096)].to(device)
        inputs = inputs.reshape(j-i, 4096)

        # Forward pass through the model
        lm_logits = model(inputs).logits

        # Shift logits and labels for next token prediction
        shift_logits = lm_logits[:, :-1, :].contiguous()
        shift_labels = inputs[:, 1:]

        # Compute loss
        loss_fct = nn.CrossEntropyLoss()
        loss = loss_fct(shift_logits.reshape(-1, shift_logits.size(-1)), shift_labels.reshape(-1))

        # Calculate negative log likelihood
        neg_log_likelihood = loss.float() * 4096 * (j-i)

        # Append to list of negative log likelihoods
        nlls.append(neg_log_likelihood)

    # Compute perplexity
    ppl = torch.exp(torch.stack(nlls).sum() / (nsamples * 4096))

    # Empty CUDA cache to save memory
    torch.cuda.empty_cache()

    return ppl.item()

class Evaluator:
    def __init__(self, dataset, tokenizer, device, n_samples=100):
        self.dataset = dataset
        self.tokenizer = tokenizer
        self.device = device

        self.dataset = tokenizer(
            "\n\n".join(dataset["text"]), return_tensors="pt"
        ).input_ids.to(device)

        self.n_samples = n_samples

    @torch.no_grad()
    def evaluate(self, model):
        seqlen = int(args.seqlen)

        if seqlen == 2048:
            model.eval()
            nlls = []

            for i in tqdm.tqdm(range(self.n_samples), desc="Evaluating..."):
                batch = self.dataset[:, (i * seqlen) : ((i + 1) * seqlen)].to(model.device)
                with torch.no_grad():
                    lm_logits = model(batch).logits
                shift_logits = lm_logits[:, :-1, :].contiguous().float()
                shift_labels = self.dataset[:, (i * seqlen) : ((i + 1) * seqlen)][:, 1:]
                loss_fct = nn.CrossEntropyLoss()
                loss = loss_fct(
                    shift_logits.view(-1, shift_logits.size(-1)), shift_labels.view(-1)
                )
                neg_log_likelihood = loss.float() * seqlen
                nlls.append(neg_log_likelihood)
            ppl = torch.exp(torch.stack(nlls).sum() / (self.n_samples * seqlen))

        elif seqlen == 4096:
            ppl = eval_ppl(model, tokenizer, device)
            

        return ppl

from datasets import load_dataset

tokenizer = LlamaTokenizer.from_pretrained("meta-llama/Llama-2-7b-hf",token="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" )
dataset = load_dataset('wikitext', 'wikitext-2-raw-v1', split='test')

# Tokenize the dataset
tokenized_dataset = dataset.map(lambda e: tokenizer(e['text'], truncation=True, padding=False), batched=True)

# Count the total number of tokens
total_tokens = sum(len(token_ids) for token_ids in tokenized_dataset['input_ids'])
# print("number of batches:", total_tokens//2048)
evaluator = Evaluator(dataset, tokenizer, "cuda", total_tokens//2048)

# MXFP imports
import torch
import torch.nn.functional as F
import numpy as np
import argparse
import sys
import os



# Auto-inject MX modules and functions
# This will replace certain torch.nn.* and torch.nn.functional.*
# modules/functions in the global namespace!
if not args.baseline:
    microscaling = '../mx'
    sys.path.append(os.path.dirname(os.path.expanduser(microscaling)))

    from mx import finalize_mx_specs
    from mx import mx_mapping

    # Simple MX spec for MXFP6 weights+activations
    mx_specs = {
        'scale_bits': int(args.scale_bits),
        'w_elem_format': args.w_elem,
        'a_elem_format': args.a_elem,
        'block_size': int(args.block_size),
        args.scalar_format: args.scalar_width,
        'custom_cuda': True,
        # For quantization-aware finetuning, do backward pass in FP32
        'quantize_backprop': args.quantize_backprop,
    }
    mx_specs = finalize_mx_specs(mx_specs)
    mx_mapping.inject_pyt_ops(mx_specs)

model = LlamaForCausalLM.from_pretrained(
    args.model, torch_dtype=torch.float16, device_map="auto",token="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"
)

ppl = evaluator.evaluate(model)
print(f"{args.model} {args.w_elem} {args.a_elem} {args.block_size} {args.scalar_format} {args.scalar_width} {args.quantize_backprop}")
print(f"perplexity: {ppl}")