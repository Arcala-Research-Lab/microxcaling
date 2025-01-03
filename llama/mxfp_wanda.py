import os
import argparse
import torch
import torch.nn as nn
from transformers import LlamaTokenizer, LlamaForCausalLM, Trainer, TrainingArguments
from datasets import load_dataset
import tqdm
import random

# Pruning utilities from PyTorch
from torch.nn.utils import prune

import torch.nn as nn
from transformers.models.llama.modeling_llama import (
    LlamaAttention,
    LlamaDecoderLayer,
    LlamaForCausalLM,
    LlamaMLP,
)

os.environ['PYTORCH_CUDA_ALLOC_CONF'] = 'expandable_segments:True'

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
parser.add_argument('--post_pruning_quant', help='Quantize after pruning', default=False, action='store_true')

parser.add_argument('--wanda_checkpoints', help='pruned models', default=False, action='store_true')
parser.add_argument('--wanda_method', help='Pruning method: sparsegpt_unstructured, magnitude_unstructured, wanda_unstructured', default="magnitude_unstructured")
parser.add_argument('--verify', help='No quantization', default=False, action='store_true')
# parser.add_argument('--change_block', help='test of blocking effects', default=False)
parser.add_argument('--scale_bits', help='width of scalar elems', default=8)
parser.add_argument('--seqlen', help='sequence length', default=2048)


args = parser.parse_args()

# Utilized perplexity calculations from this file
# https://github.com/mit-han-lab/smoothquant/blob/main/examples/smoothquant_llama_demo.ipynb

device = torch.device("cuda" if torch.cuda.is_available() else "cpu")


# Wanda repo perplexity calculation

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
            ppl = torch.exp(torch.stack(nlls).sum() / (self.n_samples * seqlen))

        elif seqlen == 4096:
            ppl = eval_ppl(model, tokenizer, device)

        return ppl

def verify_sparsity(model):
    total_params = 0
    zero_params = 0
    
    for module in model.modules():
        # print(f"module {module}")
        if isinstance(module, (nn.Linear, nn.Conv2d)):
            weight = module.weight
            total_params += weight.numel()
            zero_params += torch.sum(weight == 0).item()
    
    sparsity = zero_params / total_params
    print(f"Total Parameters: {total_params}")
    print(f"Zero Parameters: {zero_params}")
    print(f"Sparsity: {sparsity:.2%}")

# Wanda Imports
# https://huggingface.co/spaces/vita-group/README/blob/main/README.md?code=true#L10

if args.wanda_checkpoints:
    
    import torch
    from transformers import AutoModelForCausalLM, AutoTokenizer
    base_model = 'llama-2-7b'
    # comp_method = 'magnitude_unstructured'
    # comp_degree = 0.2
    comp_degree = args.target_sparsity
    comp_method = args.wanda_method # sparsegpt_unstructured, magnitude_unstructured, wanda_unstructured
    model_path = f'vita-group/{base_model}_{comp_method}'

    # Microscaling code
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

        print("injecting microscaling layers")

        # model = LlamaForCausalLM.from_pretrained(
        #     args.model, torch_dtype=torch.float16, device_map="auto",token="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"
        # )

    # End Microscaling 

    # if (comp_method == "wanda_unstructured" and (comp_degree == 0.4 or comp_degree > 0.6)):
    if args.target_sparsity == 0.0:
        # instantiating baseline model
        model = LlamaForCausalLM.from_pretrained(
            args.model, torch_dtype=torch.float16, device_map="auto",token="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"
        )
    elif (comp_method == "wanda_unstructured"):
        # using 40% sparsity checkpoint from https://huggingface.co/vashistht/pruned-wanda-sparsity-0.4/tree/main
        model_path = "vashistht/pruned-wanda-sparsity-"
        model_path += str(comp_degree)
        model = AutoModelForCausalLM.from_pretrained(
            model_path, 
            # revision=f's{comp_degree}',
            torch_dtype=torch.float16, 
            low_cpu_mem_usage=True, 
            device_map="auto"
        )

    else: 
        # Using repositories from UT Austin
        model = AutoModelForCausalLM.from_pretrained(
                model_path, 
                revision=f's{comp_degree}',
                torch_dtype=torch.float16, 
                low_cpu_mem_usage=True, 
                device_map="auto"
            )

    tokenizer = AutoTokenizer.from_pretrained('meta-llama/Llama-2-7b-hf')
    print(f"Loading model: {model_path} sparsity: {comp_degree}")
    # print("Verifying sparsity")
    # verify_sparsity(model)

    dataset = load_dataset('wikitext', 'wikitext-2-raw-v1', split='test')
    # Tokenize the dataset
    tokenized_dataset = dataset.map(lambda e: tokenizer(e['text'], truncation=True, padding=False), batched=True)
    # Count the total number of tokens
    total_tokens = sum(len(token_ids) for token_ids in tokenized_dataset['input_ids'])
    evaluator = Evaluator(dataset, tokenizer, "cuda", total_tokens // 2048)
    post_prune_ppl = evaluator.evaluate(model)
    print(f"Perplexity: {post_prune_ppl}")

    # input_ids = tokenizer('Hello! I am a VITA-compressed-LLM chatbot!', return_tensors='pt').input_ids.cuda()
    # outputs = model.generate(input_ids, max_new_tokens=128)
    # print(tokenizer.decode(outputs[0]))

else:
    # original code    

    # Load tokenizer and dataset
    tokenizer = LlamaTokenizer.from_pretrained("meta-llama/Llama-2-7b-hf",token="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" )
    dataset = load_dataset('wikitext', 'wikitext-2-raw-v1', split='test')

    # Add a padding token if it doesn't exist
    if tokenizer.pad_token is None:
        tokenizer.add_special_tokens({'pad_token': '[PAD]'})

    dataset2 = load_dataset('wikitext', 'wikitext-2-raw-v1')

    # Split dataset
    train_dataset = dataset2['train']
    validation_dataset = dataset2['validation']

    # Tokenize the dataset
    def tokenize_function(examples):
        tokens = tokenizer(examples['text'], truncation=True, padding='max_length', max_length=2048)
        tokens['labels'] = tokens['input_ids'].copy()
        return tokens
    # def tokenize_function(examples):
    #     return tokenizer(examples['text'], truncation=True, padding='max_length', max_length=2048)

    tokenized_train = train_dataset.map(tokenize_function, batched=True)
    tokenized_validation = validation_dataset.map(tokenize_function, batched=True)

    # Tokenize the dataset
    tokenized_dataset = dataset.map(lambda e: tokenizer(e['text'], truncation=True, padding=False), batched=True)
    # tokenized_dataset = dataset.map(lambda e: tokenizer(e['text'], truncation=True, padding='max_length', max_length=2048), batched=True)

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
        if not args.post_pruning_quant:
            mx_specs = finalize_mx_specs(mx_specs)
            mx_mapping.inject_pyt_ops(mx_specs)

    # Load the model
    # model = LlamaForCausalLM.from_pretrained(
    #     args.model, torch_dtype=torch.float16, device_map="auto",token="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"
    # )
    testing = False

    if not testing:
        model = LlamaForCausalLM.from_pretrained(
            args.model, torch_dtype=torch.float16, device_map=None,token="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"
        )

    else:
        model = LlamaForCausalLM.from_pretrained(
            args.model, torch_dtype=torch.float16, device_map="auto",token="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"
        )

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
            per_device_train_batch_size=1,      # Depending on GPU memory, you might need to adjust this
            gradient_accumulation_steps=8,      # Accumulate gradients for larger effective batch size
            logging_dir='./logs',
            save_steps=False,
            logging_steps=100,                  # Updated to control logging frequency
            max_steps=args.fine_tune_steps,          # Limit the number of training steps
            warmup_steps=100,                   # Warm-up steps for the learning rate scheduler
            lr_scheduler_type='linear',         # Use a linear scheduler with warm-up
            # fp16=True
        )

    # if testing:
    #     trainer = Trainer(
    #         model=model,                         # the instantiated 🤗 Transformers model to be trained
    #         args=get_training_args(),            # training arguments, defined above
    #         train_dataset=tokenized_train,
    #         eval_dataset=tokenized_validation
    #     )
    #     trainer.train()
    #     print("Evaluating model after fine-tuning...")
    #     post_fine_tuning_ppl = evaluator.evaluate(model)
    #     print(f"Perplexity after fine-tuning: {post_fine_tuning_ppl}")




    # Function to remove pruning from all layers that have weights
    def remove_pruning(model):
        for name, module in model.named_modules():
            # Check if the module has a 'weight' attribute
            if hasattr(module, 'weight'):
                try:
                    prune.remove(module, 'weight')
                    # print(f"Pruning removed and made permanent for {name}.")
                except ValueError:
                    pass
                    # print(f"No pruning applied to the weights of {name}, skipping...")

    # Function to apply pruning with optional fine-tuning
    def prune_and_finetune_model(method, model, target_sparsity, num_iterations, fine_tune, fine_tune_steps, fine_tune_iterations, evaluator):
        # parameters_to_prune = [(module, 'weight') for module in model.modules() if isinstance(module, (nn.Linear, nn.Conv2d))]
        parameters_to_prune = [(module, 'weight') for name, module in model.named_modules() if (isinstance(module, (nn.Linear, nn.Conv2d)) and name != "lm_head")]

        initial_state_dict = model.state_dict()



        # print("Evaluating model before pruning...")
        # initial_ppl = evaluator.evaluate(model)
        # print(f"Perplexity before pruning: {initial_ppl}")

        print(f"{args.model}")
        if args.baseline:
            print(f"No Quantization")
        else: 
            print(f" {args.w_elem} {args.a_elem} {args.block_size} {args.scalar_format} {args.scalar_width} {args.quantize_backprop}")
        print(f"{args.pruning_method} {args.target_sparsity} {args.num_iterations} {args.fine_tune} {args.fine_tune_steps} {args.fine_tune_iterations}")

        # def check_parameter_devices(parameters_to_prune):
        #     for module, param_name in parameters_to_prune:
        #         param = getattr(module, param_name)
        #         print(f'Module: {module}, Parameter: {param_name}, Device: {param.device}')

        # # Example usage:
        # parameters_to_prune = [(module, 'weight') for module in model.modules() if isinstance(module, (nn.Linear, nn.Conv2d))]
        # check_parameter_devices(parameters_to_prune)

        if method == "none":
            pass
        elif method == "oneshot":
            print("Starting global unstructured pruning...")
            prune.global_unstructured(parameters_to_prune, pruning_method=prune.L1Unstructured, amount=target_sparsity)

            # inject MX layers after pruning    
            if args.post_pruning_quant and not args.fine_tune:
                print("Saving pruned state_dict")

                # Make the pruning permanent by removing the reparameterization for each layer
                remove_pruning(model)

                # Call this function after pruning
                print("Verifying sparsity after remove_pruning")
                verify_sparsity(model)

                # quantizing model after pruning
                mx_mapping.inject_pyt_ops(mx_specs)

            else:
                # Make the pruning permanent by removing the reparameterization for each layer
                remove_pruning(model)
                print("Verifying sparsity after remove_pruning")
                verify_sparsity(model)

            if not args.fine_tune:
                print("Moving tensors to GPU...")
                model.to(device)  # Move model to the GPU
            # model = accelerator.prepare(model)

            if args.post_pruning_quant and not args.fine_tune:
                print("Evaluating model after pruning and quantization...")
            else:
                print("Evaluating model after pruning...")

            if not args.fine_tune:
                post_prune_ppl = evaluator.evaluate(model)
                print(f"Perplexity: {post_prune_ppl}")

            if fine_tune:
                # Ensure the model is aware of the new padding token
                print(f"Resizing token embeddings")
                model.resize_token_embeddings(len(tokenizer))
                model.gradient_checkpointing_enable()
                torch.cuda.empty_cache()

                model.save_pretrained('./pruned_model')
                model = LlamaForCausalLM.from_pretrained(
                    './pruned_model', torch_dtype=torch.float16, device_map="auto",token="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"
                )

                trainer = Trainer(
                    model=model,                         # the instantiated 🤗 Transformers model to be trained
                    args=get_training_args(),            # training arguments, defined above
                    train_dataset=tokenized_train,
                    eval_dataset=tokenized_validation
                )
                print(f"Starting fine-tuning")
                trainer.train()
                print("Evaluating model after fine-tuning...")
                post_fine_tuning_ppl = evaluator.evaluate(model)
                print(f"Perplexity after fine-tuning: {post_fine_tuning_ppl}")

            if args.post_pruning_quant and args.fine_tune:
                # quantizing model after pruning
                mx_mapping.inject_pyt_ops(mx_specs)
                print("Evaluating model after pruning, fine-tuning, and quantization...")
                post_fine_tuning_ppl = evaluator.evaluate(model)
                print(f"Perplexity: {post_fine_tuning_ppl}")

        else:
            for iteration in range(num_iterations):
                prune.global_unstructured(parameters_to_prune, pruning_method=prune.L1Unstructured, amount=target_sparsity / num_iterations)
                
                # Need to fix this - need to load without repopulating pruned weights
                if method == "lottery_ticket":
                    model.load_state_dict(initial_state_dict)  # Reset weights to initial

                # inject MX layers after pruning    
                    if not args.post_pruning_quant:
                        mx_mapping.inject_pyt_ops(mx_specs)

                print("Moving tensors to GPU...")
                model.to(device)  # Move model to the GPU

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
    # print(f"{args.model} {args.w_elem} {args.a_elem} {args.block_size} {args.scalar_format} {args.scalar_width} {args.quantize_backprop}")
    print(f"Final Perplexity: {final_ppl}")