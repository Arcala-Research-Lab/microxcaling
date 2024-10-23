#!/bin/bash

python mxfp_wanda.py --wanda_checkpoints --target_sparsity 0.1 > wanda_logs/baseline_wanda_magnitude_10.log
python mxfp_wanda.py --wanda_checkpoints --target_sparsity 0.2 > wanda_logs/baseline_wanda_magnitude_20.log
python mxfp_wanda.py --wanda_checkpoints --target_sparsity 0.3 > wanda_logs/baseline_wanda_magnitude_30.log
python mxfp_wanda.py --wanda_checkpoints --target_sparsity 0.4 > wanda_logs/baseline_wanda_magnitude_40.log
python mxfp_wanda.py --wanda_checkpoints --target_sparsity 0.5 > wanda_logs/baseline_wanda_magnitude_50.log
python mxfp_wanda.py --wanda_checkpoints --target_sparsity 0.6 > wanda_logs/baseline_wanda_magnitude_60.log

python mxfp_wanda.py --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/baseline_wanda_wanda_10.log
python mxfp_wanda.py --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/baseline_wanda_wanda_20.log
python mxfp_wanda.py --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/baseline_wanda_wanda_30.log
python mxfp_wanda.py --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.4 > wanda_logs/baseline_wanda_wanda_40.log
python mxfp_wanda.py --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/baseline_wanda_wanda_50.log
python mxfp_wanda.py --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/baseline_wanda_wanda_60.log

python mxfp_wanda.py --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/baseline_wanda_sparsegpt_10.log
python mxfp_wanda.py --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/baseline_wanda_sparsegpt_20.log
python mxfp_wanda.py --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/baseline_wanda_sparsegpt_30.log
python mxfp_wanda.py --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.4 > wanda_logs/baseline_wanda_sparsegpt_40.log
python mxfp_wanda.py --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/baseline_wanda_sparsegpt_50.log
python mxfp_wanda.py --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/baseline_wanda_sparsegpt_60.log

# done

