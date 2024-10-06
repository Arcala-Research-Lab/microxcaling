import os
import torch
import torch.nn as nn
from transformers.models.llama.modeling_llama import (
    LlamaAttention,
    LlamaDecoderLayer,
    LlamaForCausalLM,
    LlamaMLP,
)
from transformers import LlamaTokenizer
import tqdm
import numpy as np

import argparse
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', help='No quantization', default=False)
parser.add_argument('--model', help='model name', default="meta-llama/Llama-2-7b-hf")
parser.add_argument('--w_elem', help='weight format', default="int8")
parser.add_argument('--a_elem', help='activation format', default="int8")
parser.add_argument('--block_size', help='microscaling block size', default=32)
parser.add_argument('--scalar_format', help='fp or bfloat', default="fp")
parser.add_argument('--scalar_width', help='width of scalar elems', default=16)
parser.add_argument('--quantize_backprop', help='quantization of back prop (True or False)', default=False)

args = parser.parse_args()

# Hook function to capture activations
def activation_hook(module, input, output, activations_dict, layer_name):
    # Check if the output is a tuple and extract the first element if it is
    if isinstance(output, tuple):
        output = output[0]  # Assume the first element is the activation we want
    activations_dict[layer_name] = output.detach().cpu().numpy()

# Function to check for outliers in activations
def check_outliers(activations_dict, threshold=3):
    outlier_info = {}
    for layer_name, activations in activations_dict.items():
        mean = np.mean(activations)
        std = np.std(activations)
        max_val = np.max(np.abs(activations))
        min_val = np.min(np.abs(activations))
        outliers = np.abs(activations - mean) > threshold * std
        percentage_outliers = np.sum(outliers) / activations.size * 100
        outlier_info[layer_name] = {
            'mean': mean,
            'std': std,
            'max_abs': max_val,
            'min_abs': min_val,  
            'outliers_percent': percentage_outliers
        }
    return outlier_info

# Function to check for max, min, mean, std, and outliers in weights
def check_weights(model, threshold=3):
    weight_info = {}
    for name, param in model.named_parameters():
        if 'weight' in name:  # Focus on weight parameters only
            weights = param.detach().cpu().numpy()
            mean = np.mean(weights)
            std = np.std(weights)
            max_val = np.max(weights)
            min_val = np.min(weights)
            max_abs_val = np.max(np.abs(weights))  # Max absolute value
            min_abs_val = np.min(np.abs(weights))  # Min absolute value (ignores sign)
            outliers = np.abs(weights - mean) > threshold * std
            percentage_outliers = np.sum(outliers) / weights.size * 100
            weight_info[name] = {
                'mean': mean,
                'std': std,
                'max': max_val,
                'min': min_val,
                'max_abs': max_abs_val,
                'min_abs': min_abs_val,
                'outliers_percent': percentage_outliers
            }
    return weight_info


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
        model.eval()
        nlls = []
        activations_dict = {}
        
        # Register hooks for each layer to capture activations
        for name, module in model.named_modules():
            if isinstance(module, (LlamaAttention, LlamaDecoderLayer, LlamaMLP)):
                module.register_forward_hook(
                    lambda mod, inp, out, name=name: activation_hook(mod, inp, out, activations_dict, name)
                )
        
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

            # Check for outliers in the captured activations
            outlier_info = check_outliers(activations_dict)

            for layer, info in outlier_info.items():
                print(f"Activations Layer {layer}: Mean: {info['mean']}, Std: {info['std']}, Max: {info['max_abs']}, Min: {info['min_abs']}, Outliers: {info['outliers_percent']}%")

            # for layer, info in outlier_info.items():
            #     print(f"Layer {layer}: Mean: {info['mean']}, Std: {info['std']}, Max: {info['max_abs']}, Min: {info['min_abs']}, Outliers: {info['outliers_percent']}%")

        return torch.exp(torch.stack(nlls).sum() / (self.n_samples * 2048))

from datasets import load_dataset

tokenizer = LlamaTokenizer.from_pretrained("meta-llama/Llama-2-7b-hf",token="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" )
dataset = load_dataset('wikitext', 'wikitext-2-raw-v1', split='test')

# Tokenize the dataset
tokenized_dataset = dataset.map(lambda e: tokenizer(e['text'], truncation=True, padding=False), batched=True)

# Count the total number of tokens
total_tokens = sum(len(token_ids) for token_ids in tokenized_dataset['input_ids'])
evaluator = Evaluator(dataset, tokenizer, "cuda", total_tokens//2048)

# MXFP imports
import torch
import torch.nn.functional as F
import numpy as np
import argparse
import sys
import os

# Auto-inject MX modules and functions
if not args.baseline:
    microscaling = '../mx'
    sys.path.append(os.path.dirname(os.path.expanduser(microscaling)))

    from mx import finalize_mx_specs
    from mx import mx_mapping

    # Simple MX spec for MXFP6 weights+activations
    mx_specs = {
        'w_elem_format': args.w_elem,
        'a_elem_format': args.a_elem,
        'block_size': int(args.block_size),
        args.scalar_format: args.scalar_width,
        'custom_cuda': True,
        'quantize_backprop': args.quantize_backprop,
    }
    mx_specs = finalize_mx_specs(mx_specs)
    mx_mapping.inject_pyt_ops(mx_specs)

model = LlamaForCausalLM.from_pretrained(
    args.model, torch_dtype=torch.float16, device_map="auto",token="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"
)

# Check weights
weight_info = check_weights(model)
for layer, info in weight_info.items():
    print(f"Weights Layer {layer}: Mean: {info['mean']}, Std: {info['std']}, Max: {info['max']}, Min: {info['min']}, Max Abs: {info['max_abs']}, Min Abs: {info['min_abs']}, Outliers: {info['outliers_percent']}%")

print(f"-------------------------------------------"
)
ppl = evaluator.evaluate(model)
print(f"{args.model} {args.w_elem} {args.a_elem} {args.block_size} {args.scalar_format} {args.scalar_width} {args.quantize_backprop}")
print(f"perplexity: {ppl}")
