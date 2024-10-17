import os
import argparse
import torch
import torch.nn as nn
from transformers import LlamaTokenizer, LlamaForCausalLM, Trainer, TrainingArguments
from datasets import load_dataset
import tqdm

# Pruning utilities from PyTorch
from torch.nn.utils import prune

import torch.nn as nn
from transformers.models.llama.modeling_llama import (
    LlamaAttention,
    LlamaDecoderLayer,
    LlamaForCausalLM,
    LlamaMLP,
)

# Argument parser settings
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', help='No quantization', default=False, action='store_true')
parser.add_argument('--model', help='Model name', default="meta-llama/Llama-2-7b-hf")
parser.add_argument('--w_elem', help='Weight format', default="int8")
parser.add_argument('--a_elem', help='Activation format', default="int8")
parser.add_argument('--block_size', help='Microscaling block size', default=32)
parser.add_argument('--scalar_format', help='fp or bfloat', default="fp")
parser.add_argument('--scalar_width', help='Width of scalar elements', default=16)
parser.add_argument('--quantize_backprop', help='Quantization of back-prop (True or False)', default=False)
parser.add_argument('--pruning_method', help='Pruning method: none, oneshot, iterative, lottery_ticket', default='none')
parser.add_argument('--target_sparsity', help='Target sparsity (0 to 1)', default=0.2, type=float)
parser.add_argument('--num_iterations', help='Number of iterations for iterative and lottery ticket pruning', default=10, type=int)
parser.add_argument('--fine_tune', help='Fine-tune the model after pruning', default=False, action='store_true')
parser.add_argument('--fine_tune_steps', help='Number of steps for fine-tuning after each pruning iteration', default=100, type=int)
parser.add_argument('--fine_tune_iterations', help='Number of iterations for fine-tuning', default=3, type=int)

# parser.add_argument('--change_block', help='test of blocking effects', default=False)

args = parser.parse_args()

# Utilized perplexity calculations from this file
# https://github.com/mit-han-lab/smoothquant/blob/main/examples/smoothquant_llama_demo.ipynb

# device = torch.device("cuda" if torch.cuda.is_available() else "cpu")


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

# Load tokenizer and dataset
tokenizer = LlamaTokenizer.from_pretrained("meta-llama/Llama-2-7b-hf",token="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" )
dataset = load_dataset('wikitext', 'wikitext-2-raw-v1', split='test')

# Tokenize the dataset
tokenized_dataset = dataset.map(lambda e: tokenizer(e['text'], truncation=True, padding=False), batched=True)

# Count the total number of tokens
total_tokens = sum(len(token_ids) for token_ids in tokenized_dataset['input_ids'])

evaluator = Evaluator(dataset, tokenizer, "cuda", total_tokens // 2048)

# microscaling

# MXFP imports
import torch
import torch.nn.functional as F
import numpy as np
import argparse
import sys
import os

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
        # For quantization-aware finetuning, do backward pass in FP32
        'quantize_backprop': args.quantize_backprop,
    }
    mx_specs = finalize_mx_specs(mx_specs)
    mx_mapping.inject_pyt_ops(mx_specs)

# Load the model
model = LlamaForCausalLM.from_pretrained(
    args.model, torch_dtype=torch.float16, device_map="auto",token="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"
)

# Function to apply pruning with optional fine-tuning
def prune_and_finetune_model(method, model, target_sparsity, num_iterations, fine_tune, fine_tune_steps, fine_tune_iterations, evaluator):
    parameters_to_prune = [(module, 'weight') for module in model.modules() if isinstance(module, (nn.Linear, nn.Conv2d))]
    initial_state_dict = model.state_dict()

    # Define a common function to get new training arguments for fine-tuning
    def get_training_args():
        return TrainingArguments(
            output_dir='./results',
            learning_rate=5e-5,
            weight_decay=0.01,
            adam_beta1=0.9,
            adam_beta2=0.999,
            adam_epsilon=1e-6,
            max_grad_norm=1.0,
            per_device_train_batch_size=8,      # Depending on GPU memory, you might need to adjust this
            gradient_accumulation_steps=4,      # Accumulate gradients for larger effective batch size
            logging_dir='./logs',
            save_steps=False,
            logging_steps=100,                  # Updated to control logging frequency
            max_steps=fine_tune_steps,          # Limit the number of training steps
            warmup_steps=100,                   # Warm-up steps for the learning rate scheduler
            lr_scheduler_type='linear',         # Use a linear scheduler with warm-up
        )

    # print("Evaluating model before pruning...")
    # initial_ppl = evaluator.evaluate(model)
    # print(f"Perplexity before pruning: {initial_ppl}")

    if method == "none":
        pass
    elif method == "oneshot":
        prune.global_unstructured(parameters_to_prune, pruning_method=prune.L1Unstructured, amount=target_sparsity)

        print("Evaluating model after oneshot pruning...")
        post_prune_ppl = evaluator.evaluate(model)
        print(f"Perplexity after oneshot pruning: {post_prune_ppl}")

        if fine_tune:
            trainer = Trainer(
                model=model,                         # the instantiated 🤗 Transformers model to be trained
                args=get_training_args(),            # training arguments, defined above
                train_dataset=tokenized_dataset,     # training dataset
            )
            trainer.train()
            print("Evaluating model after fine-tuning...")
            post_fine_tuning_ppl = evaluator.evaluate(model)
            print(f"Perplexity after fine-tuning: {post_fine_tuning_ppl}")

    else:
        for iteration in range(num_iterations):
            prune.global_unstructured(parameters_to_prune, pruning_method=prune.L1Unstructured, amount=target_sparsity / num_iterations)
            if method == "lottery_ticket":
                model.load_state_dict(initial_state_dict)  # Reset weights to initial

            print(f"Evaluating model after pruning iteration {iteration + 1}...")
            immediate_ppl = evaluator.evaluate(model)
            print(f"Perplexity after pruning iteration {iteration + 1}: {immediate_ppl}")

            # Optional fine-tuning after pruning
            if fine_tune:
                for fine_tune_iteration in range(fine_tune_iterations):
                    trainer = Trainer(
                        model=model,                         # the instantiated 🤗 Transformers model to be trained
                        args=get_training_args(),            # training arguments, defined above
                        train_dataset=tokenized_dataset,     # training dataset
                    )
                    trainer.train()
                    print(f"Evaluating model after fine-tuning iteration {fine_tune_iteration + 1} of pruning step {iteration + 1}...")
                    post_fine_tune_ppl = evaluator.evaluate(model)
                    print(f"Perplexity after fine-tuning iteration {fine_tune_iteration + 1} of pruning step {iteration + 1}: {post_fine_tune_ppl}")

# Apply the specified pruning method
prune_and_finetune_model(args.pruning_method, model, args.target_sparsity, args.num_iterations, args.fine_tune, args.fine_tune_steps, args.fine_tune_iterations, evaluator)

# Evaluate the model
final_ppl = evaluator.evaluate(model)
print(f"{args.model} {args.w_elem} {args.a_elem} {args.block_size} {args.scalar_format} {args.scalar_width} {args.quantize_backprop}")
print(f"Final Perplexity: {final_ppl}")