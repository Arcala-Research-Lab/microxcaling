#!/bin/bash

# python mxfp_wanda.py --wanda_checkpoints --target_sparsity 0.1 > wanda_logs/baseline_wanda_magnitude_10.log
# python mxfp_wanda.py --wanda_checkpoints --target_sparsity 0.2 > wanda_logs/baseline_wanda_magnitude_20.log
# python mxfp_wanda.py --wanda_checkpoints --target_sparsity 0.3 > wanda_logs/baseline_wanda_magnitude_30.log
# python mxfp_wanda.py --wanda_checkpoints --target_sparsity 0.4 > wanda_logs/baseline_wanda_magnitude_40.log
# python mxfp_wanda.py --wanda_checkpoints --target_sparsity 0.5 > wanda_logs/baseline_wanda_magnitude_50.log
# python mxfp_wanda.py --wanda_checkpoints --target_sparsity 0.6 > wanda_logs/baseline_wanda_magnitude_60.log

# python mxfp_wanda.py --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/baseline_wanda_wanda_10.log
# python mxfp_wanda.py --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/baseline_wanda_wanda_20.log
# python mxfp_wanda.py --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/baseline_wanda_wanda_30.log
# python mxfp_wanda.py --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.4 > wanda_logs/baseline_wanda_wanda_40.log
# python mxfp_wanda.py --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/baseline_wanda_wanda_50.log
# python mxfp_wanda.py --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/baseline_wanda_wanda_60.log

# python mxfp_wanda.py --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/baseline_wanda_sparsegpt_10.log
# python mxfp_wanda.py --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/baseline_wanda_sparsegpt_20.log
# python mxfp_wanda.py --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/baseline_wanda_sparsegpt_30.log
# python mxfp_wanda.py --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.4 > wanda_logs/baseline_wanda_sparsegpt_40.log
# python mxfp_wanda.py --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/baseline_wanda_sparsegpt_50.log
# python mxfp_wanda.py --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/baseline_wanda_sparsegpt_60.log

# done

# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int4_fp16_block128_wanda_10.log
# # # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int4_fp16_block128_wanda_20.log
# # # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int4_fp16_block128_wanda_30.log
# # # # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.4 > wanda_logs/int4_fp16_block128_wanda_40.log
# # # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int4_fp16_block128_wanda_50.log
# # # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int4_fp16_block128_wanda_60.log

# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int4_fp16_block128_magnitude_10.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int4_fp16_block128_magnitude_20.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int4_fp16_block128_magnitude_30.log
# # # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.4 > wanda_logs/int4_fp16_block128_magnitude_40.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int4_fp16_block128_magnitude_50.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int4_fp16_block128_magnitude_60.log

# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int4_fp16_block128_sparsegpt_10.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int4_fp16_block128_sparsegpt_20.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int4_fp16_block128_sparsegpt_30.log
# # # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.4 > wanda_logs/int4_fp16_block128_sparsegpt_40.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int4_fp16_block128_sparsegpt_50.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int4_fp16_block128_sparsegpt_60.log

# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int4_fp16_block16_wanda_10.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int4_fp16_block16_wanda_20.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int4_fp16_block16_wanda_30.log
# # # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.4 > wanda_logs/int4_fp16_block16_wanda_40.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int4_fp16_block16_wanda_50.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int4_fp16_block16_wanda_60.log

# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int4_fp16_block8_wanda_10.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int4_fp16_block8_wanda_20.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int4_fp16_block8_wanda_30.log
# # # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.4 > wanda_logs/int4_fp16_block8_wanda_40.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int4_fp16_block8_wanda_50.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int4_fp16_block8_wanda_60.log

# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int4_fp16_block16_magnitude_10.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int4_fp16_block16_magnitude_20.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int4_fp16_block16_magnitude_30.log
# # # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.4 > wanda_logs/int4_fp16_block16_magnitude_40.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int4_fp16_block16_magnitude_50.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int4_fp16_block16_magnitude_60.log

# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int4_fp16_block16_sparsegpt_10.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int4_fp16_block16_sparsegpt_20.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int4_fp16_block16_sparsegpt_30.log
# # # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.4 > wanda_logs/int4_fp16_block16_sparsegpt_40.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int4_fp16_block16_sparsegpt_50.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int4_fp16_block16_sparsegpt_60.log

# ## done
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int4_fp16_block4_wanda_10.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int4_fp16_block4_wanda_20.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int4_fp16_block4_wanda_30.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.4 > wanda_logs/int4_fp16_block4_wanda_40.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int4_fp16_block4_wanda_50.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int4_fp16_block4_wanda_60.log

# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int4_fp16_block2_wanda_10.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int4_fp16_block2_wanda_20.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int4_fp16_block2_wanda_30.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.4 > wanda_logs/int4_fp16_block2_wanda_40.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int4_fp16_block2_wanda_50.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int4_fp16_block2_wanda_60.log

# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int4_fp16_block32_wanda_10.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int4_fp16_block32_wanda_20.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int4_fp16_block32_wanda_30.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.4 > wanda_logs/int4_fp16_block32_wanda_40.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int4_fp16_block32_wanda_50.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int4_fp16_block32_wanda_60.log

# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int4_fp16_block64_wanda_10.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int4_fp16_block64_wanda_20.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int4_fp16_block64_wanda_30.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.4 > wanda_logs/int4_fp16_block64_wanda_40.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int4_fp16_block64_wanda_50.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int4_fp16_block64_wanda_60.log

# ##

# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int4_fp16_block8_magnitude_10.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int4_fp16_block8_magnitude_20.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int4_fp16_block8_magnitude_30.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.4 > wanda_logs/int4_fp16_block8_magnitude_40.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int4_fp16_block8_magnitude_50.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int4_fp16_block8_magnitude_60.log

# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int4_fp16_block4_magnitude_10.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int4_fp16_block4_magnitude_20.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int4_fp16_block4_magnitude_30.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.4 > wanda_logs/int4_fp16_block4_magnitude_40.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int4_fp16_block4_magnitude_50.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int4_fp16_block4_magnitude_60.log

# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int4_fp16_block2_magnitude_10.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int4_fp16_block2_magnitude_20.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int4_fp16_block2_magnitude_30.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.4 > wanda_logs/int4_fp16_block2_magnitude_40.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int4_fp16_block2_magnitude_50.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int4_fp16_block2_magnitude_60.log

# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int4_fp16_block32_magnitude_10.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int4_fp16_block32_magnitude_20.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int4_fp16_block32_magnitude_30.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.4 > wanda_logs/int4_fp16_block32_magnitude_40.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int4_fp16_block32_magnitude_50.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int4_fp16_block32_magnitude_60.log

# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int4_fp16_block64_magnitude_10.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int4_fp16_block64_magnitude_20.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int4_fp16_block64_magnitude_30.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.4 > wanda_logs/int4_fp16_block64_magnitude_40.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int4_fp16_block64_magnitude_50.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int4_fp16_block64_magnitude_60.log
# ####

# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int4_fp16_block8_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int4_fp16_block8_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int4_fp16_block8_sparsegpt_30.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.4 > wanda_logs/int4_fp16_block8_sparsegpt_40.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int4_fp16_block8_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int4_fp16_block8_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int4_fp16_block4_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int4_fp16_block4_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int4_fp16_block4_sparsegpt_30.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.4 > wanda_logs/int4_fp16_block4_sparsegpt_40.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int4_fp16_block4_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int4_fp16_block4_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int4_fp16_block2_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int4_fp16_block2_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int4_fp16_block2_sparsegpt_30.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.4 > wanda_logs/int4_fp16_block2_sparsegpt_40.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int4_fp16_block2_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int4_fp16_block2_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int4_fp16_block32_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int4_fp16_block32_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int4_fp16_block32_sparsegpt_30.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.4 > wanda_logs/int4_fp16_block32_sparsegpt_40.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int4_fp16_block32_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int4_fp16_block32_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int4_fp16_block64_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int4_fp16_block64_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int4_fp16_block64_sparsegpt_30.log
# # python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.4 > wanda_logs/int4_fp16_block64_sparsegpt_40.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int4_fp16_block64_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int4 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int4_fp16_block64_sparsegpt_60.log
####


# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int8_fp16_block128_wanda_10.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int8_fp16_block128_wanda_20.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int8_fp16_block128_wanda_30.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int8_fp16_block128_wanda_50.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int8_fp16_block128_wanda_60.log

# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int8_fp16_block64_wanda_10.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int8_fp16_block64_wanda_20.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int8_fp16_block64_wanda_30.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int8_fp16_block64_wanda_50.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int8_fp16_block64_wanda_60.log

# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int8_fp16_block32_wanda_10.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int8_fp16_block32_wanda_20.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int8_fp16_block32_wanda_30.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int8_fp16_block32_wanda_50.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int8_fp16_block32_wanda_60.log

# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int8_fp16_block16_wanda_10.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int8_fp16_block16_wanda_20.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int8_fp16_block16_wanda_30.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int8_fp16_block16_wanda_50.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int8_fp16_block16_wanda_60.log

# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int8_fp16_block8_wanda_10.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int8_fp16_block8_wanda_20.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int8_fp16_block8_wanda_30.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int8_fp16_block8_wanda_50.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int8_fp16_block8_wanda_60.log

# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int8_fp16_block4_wanda_10.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int8_fp16_block4_wanda_20.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int8_fp16_block4_wanda_30.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int8_fp16_block4_wanda_50.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int8_fp16_block4_wanda_60.log

# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int8_fp16_block2_wanda_10.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int8_fp16_block2_wanda_20.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int8_fp16_block2_wanda_30.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int8_fp16_block2_wanda_50.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int8_fp16_block2_wanda_60.log



# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int8_fp16_block128_magnitude_10.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int8_fp16_block128_magnitude_20.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int8_fp16_block128_magnitude_30.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int8_fp16_block128_magnitude_50.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int8_fp16_block128_magnitude_60.log

# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int8_fp16_block64_magnitude_10.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int8_fp16_block64_magnitude_20.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int8_fp16_block64_magnitude_30.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int8_fp16_block64_magnitude_50.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int8_fp16_block64_magnitude_60.log

# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int8_fp16_block32_magnitude_10.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int8_fp16_block32_magnitude_20.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int8_fp16_block32_magnitude_30.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int8_fp16_block32_magnitude_50.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int8_fp16_block32_magnitude_60.log

# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int8_fp16_block16_magnitude_10.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int8_fp16_block16_magnitude_20.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int8_fp16_block16_magnitude_30.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int8_fp16_block16_magnitude_50.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int8_fp16_block16_magnitude_60.log

# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int8_fp16_block8_magnitude_10.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int8_fp16_block8_magnitude_20.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int8_fp16_block8_magnitude_30.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int8_fp16_block8_magnitude_50.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int8_fp16_block8_magnitude_60.log

# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int8_fp16_block4_magnitude_10.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int8_fp16_block4_magnitude_20.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int8_fp16_block4_magnitude_30.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int8_fp16_block4_magnitude_50.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int8_fp16_block4_magnitude_60.log

# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int8_fp16_block2_magnitude_10.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int8_fp16_block2_magnitude_20.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int8_fp16_block2_magnitude_30.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int8_fp16_block2_magnitude_50.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int8_fp16_block2_magnitude_60.log


# ####




# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int8_fp16_block128_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int8_fp16_block128_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int8_fp16_block128_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int8_fp16_block128_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int8_fp16_block128_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int8_fp16_block64_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int8_fp16_block64_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int8_fp16_block64_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int8_fp16_block64_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int8_fp16_block64_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int8_fp16_block32_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int8_fp16_block32_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int8_fp16_block32_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int8_fp16_block32_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int8_fp16_block32_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int8_fp16_block16_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int8_fp16_block16_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int8_fp16_block16_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int8_fp16_block16_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int8_fp16_block16_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int8_fp16_block8_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int8_fp16_block8_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int8_fp16_block8_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int8_fp16_block8_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int8_fp16_block8_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int8_fp16_block4_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int8_fp16_block4_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int8_fp16_block4_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int8_fp16_block4_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int8_fp16_block4_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int8_fp16_block2_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int8_fp16_block2_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int8_fp16_block2_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int8_fp16_block2_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int8 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int8_fp16_block2_sparsegpt_60.log

# ####
# ## int 7


# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int7_fp16_block128_wanda_10.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int7_fp16_block128_wanda_20.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int7_fp16_block128_wanda_30.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int7_fp16_block128_wanda_50.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int7_fp16_block128_wanda_60.log

# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int7_fp16_block64_wanda_10.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int7_fp16_block64_wanda_20.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int7_fp16_block64_wanda_30.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int7_fp16_block64_wanda_50.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int7_fp16_block64_wanda_60.log

# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int7_fp16_block32_wanda_10.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int7_fp16_block32_wanda_20.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int7_fp16_block32_wanda_30.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int7_fp16_block32_wanda_50.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int7_fp16_block32_wanda_60.log

# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int7_fp16_block16_wanda_10.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int7_fp16_block16_wanda_20.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int7_fp16_block16_wanda_30.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int7_fp16_block16_wanda_50.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int7_fp16_block16_wanda_60.log

# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int7_fp16_block8_wanda_10.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int7_fp16_block8_wanda_20.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int7_fp16_block8_wanda_30.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int7_fp16_block8_wanda_50.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int7_fp16_block8_wanda_60.log

# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int7_fp16_block4_wanda_10.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int7_fp16_block4_wanda_20.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int7_fp16_block4_wanda_30.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int7_fp16_block4_wanda_50.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int7_fp16_block4_wanda_60.log

# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int7_fp16_block2_wanda_10.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int7_fp16_block2_wanda_20.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int7_fp16_block2_wanda_30.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int7_fp16_block2_wanda_50.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int7_fp16_block2_wanda_60.log



# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int7_fp16_block128_magnitude_10.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int7_fp16_block128_magnitude_20.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int7_fp16_block128_magnitude_30.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int7_fp16_block128_magnitude_50.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int7_fp16_block128_magnitude_60.log

# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int7_fp16_block64_magnitude_10.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int7_fp16_block64_magnitude_20.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int7_fp16_block64_magnitude_30.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int7_fp16_block64_magnitude_50.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int7_fp16_block64_magnitude_60.log

# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int7_fp16_block32_magnitude_10.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int7_fp16_block32_magnitude_20.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int7_fp16_block32_magnitude_30.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int7_fp16_block32_magnitude_50.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int7_fp16_block32_magnitude_60.log

# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int7_fp16_block16_magnitude_10.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int7_fp16_block16_magnitude_20.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int7_fp16_block16_magnitude_30.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int7_fp16_block16_magnitude_50.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int7_fp16_block16_magnitude_60.log

# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int7_fp16_block8_magnitude_10.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int7_fp16_block8_magnitude_20.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int7_fp16_block8_magnitude_30.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int7_fp16_block8_magnitude_50.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int7_fp16_block8_magnitude_60.log

# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int7_fp16_block4_magnitude_10.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int7_fp16_block4_magnitude_20.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int7_fp16_block4_magnitude_30.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int7_fp16_block4_magnitude_50.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int7_fp16_block4_magnitude_60.log

# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int7_fp16_block2_magnitude_10.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int7_fp16_block2_magnitude_20.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int7_fp16_block2_magnitude_30.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int7_fp16_block2_magnitude_50.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int7_fp16_block2_magnitude_60.log


# ####




# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int7_fp16_block128_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int7_fp16_block128_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int7_fp16_block128_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int7_fp16_block128_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int7_fp16_block128_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int7_fp16_block64_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int7_fp16_block64_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int7_fp16_block64_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int7_fp16_block64_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int7_fp16_block64_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int7_fp16_block32_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int7_fp16_block32_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int7_fp16_block32_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int7_fp16_block32_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int7_fp16_block32_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int7_fp16_block16_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int7_fp16_block16_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int7_fp16_block16_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int7_fp16_block16_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int7_fp16_block16_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int7_fp16_block8_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int7_fp16_block8_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int7_fp16_block8_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int7_fp16_block8_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int7_fp16_block8_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int7_fp16_block4_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int7_fp16_block4_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int7_fp16_block4_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int7_fp16_block4_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int7_fp16_block4_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int7_fp16_block2_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int7_fp16_block2_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int7_fp16_block2_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int7_fp16_block2_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int7 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int7_fp16_block2_sparsegpt_60.log

# ####
# # int6


# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int6_fp16_block128_wanda_10.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int6_fp16_block128_wanda_20.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int6_fp16_block128_wanda_30.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int6_fp16_block128_wanda_50.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int6_fp16_block128_wanda_60.log

# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int6_fp16_block64_wanda_10.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int6_fp16_block64_wanda_20.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int6_fp16_block64_wanda_30.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int6_fp16_block64_wanda_50.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int6_fp16_block64_wanda_60.log

# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int6_fp16_block32_wanda_10.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int6_fp16_block32_wanda_20.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int6_fp16_block32_wanda_30.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int6_fp16_block32_wanda_50.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int6_fp16_block32_wanda_60.log

# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int6_fp16_block16_wanda_10.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int6_fp16_block16_wanda_20.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int6_fp16_block16_wanda_30.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int6_fp16_block16_wanda_50.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int6_fp16_block16_wanda_60.log

# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int6_fp16_block8_wanda_10.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int6_fp16_block8_wanda_20.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int6_fp16_block8_wanda_30.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int6_fp16_block8_wanda_50.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int6_fp16_block8_wanda_60.log

# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int6_fp16_block4_wanda_10.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int6_fp16_block4_wanda_20.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int6_fp16_block4_wanda_30.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int6_fp16_block4_wanda_50.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int6_fp16_block4_wanda_60.log

# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int6_fp16_block2_wanda_10.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int6_fp16_block2_wanda_20.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int6_fp16_block2_wanda_30.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int6_fp16_block2_wanda_50.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int6_fp16_block2_wanda_60.log



# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int6_fp16_block128_magnitude_10.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int6_fp16_block128_magnitude_20.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int6_fp16_block128_magnitude_30.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int6_fp16_block128_magnitude_50.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int6_fp16_block128_magnitude_60.log

# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int6_fp16_block64_magnitude_10.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int6_fp16_block64_magnitude_20.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int6_fp16_block64_magnitude_30.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int6_fp16_block64_magnitude_50.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int6_fp16_block64_magnitude_60.log

# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int6_fp16_block32_magnitude_10.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int6_fp16_block32_magnitude_20.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int6_fp16_block32_magnitude_30.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int6_fp16_block32_magnitude_50.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int6_fp16_block32_magnitude_60.log

# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int6_fp16_block16_magnitude_10.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int6_fp16_block16_magnitude_20.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int6_fp16_block16_magnitude_30.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int6_fp16_block16_magnitude_50.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int6_fp16_block16_magnitude_60.log

# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int6_fp16_block8_magnitude_10.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int6_fp16_block8_magnitude_20.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int6_fp16_block8_magnitude_30.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int6_fp16_block8_magnitude_50.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int6_fp16_block8_magnitude_60.log

# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int6_fp16_block4_magnitude_10.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int6_fp16_block4_magnitude_20.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int6_fp16_block4_magnitude_30.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int6_fp16_block4_magnitude_50.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int6_fp16_block4_magnitude_60.log

# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int6_fp16_block2_magnitude_10.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int6_fp16_block2_magnitude_20.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int6_fp16_block2_magnitude_30.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int6_fp16_block2_magnitude_50.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int6_fp16_block2_magnitude_60.log


# ####




# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int6_fp16_block128_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int6_fp16_block128_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int6_fp16_block128_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int6_fp16_block128_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int6_fp16_block128_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int6_fp16_block64_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int6_fp16_block64_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int6_fp16_block64_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int6_fp16_block64_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int6_fp16_block64_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int6_fp16_block32_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int6_fp16_block32_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int6_fp16_block32_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int6_fp16_block32_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int6_fp16_block32_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int6_fp16_block16_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int6_fp16_block16_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int6_fp16_block16_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int6_fp16_block16_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int6_fp16_block16_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int6_fp16_block8_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int6_fp16_block8_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int6_fp16_block8_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int6_fp16_block8_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int6_fp16_block8_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int6_fp16_block4_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int6_fp16_block4_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int6_fp16_block4_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int6_fp16_block4_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int6_fp16_block4_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int6_fp16_block2_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int6_fp16_block2_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int6_fp16_block2_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int6_fp16_block2_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int6 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int6_fp16_block2_sparsegpt_60.log

# # int5


# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int5_fp16_block128_wanda_10.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int5_fp16_block128_wanda_20.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int5_fp16_block128_wanda_30.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int5_fp16_block128_wanda_50.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int5_fp16_block128_wanda_60.log

# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int5_fp16_block64_wanda_10.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int5_fp16_block64_wanda_20.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int5_fp16_block64_wanda_30.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int5_fp16_block64_wanda_50.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int5_fp16_block64_wanda_60.log

# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int5_fp16_block32_wanda_10.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int5_fp16_block32_wanda_20.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int5_fp16_block32_wanda_30.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int5_fp16_block32_wanda_50.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int5_fp16_block32_wanda_60.log

# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int5_fp16_block16_wanda_10.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int5_fp16_block16_wanda_20.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int5_fp16_block16_wanda_30.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int5_fp16_block16_wanda_50.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int5_fp16_block16_wanda_60.log

# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int5_fp16_block8_wanda_10.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int5_fp16_block8_wanda_20.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int5_fp16_block8_wanda_30.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int5_fp16_block8_wanda_50.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int5_fp16_block8_wanda_60.log

# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int5_fp16_block4_wanda_10.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int5_fp16_block4_wanda_20.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int5_fp16_block4_wanda_30.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int5_fp16_block4_wanda_50.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int5_fp16_block4_wanda_60.log

# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.1 > wanda_logs/int5_fp16_block2_wanda_10.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.2 > wanda_logs/int5_fp16_block2_wanda_20.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.3 > wanda_logs/int5_fp16_block2_wanda_30.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.5 > wanda_logs/int5_fp16_block2_wanda_50.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.6 > wanda_logs/int5_fp16_block2_wanda_60.log



# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int5_fp16_block128_magnitude_10.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int5_fp16_block128_magnitude_20.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int5_fp16_block128_magnitude_30.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int5_fp16_block128_magnitude_50.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int5_fp16_block128_magnitude_60.log

# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int5_fp16_block64_magnitude_10.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int5_fp16_block64_magnitude_20.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int5_fp16_block64_magnitude_30.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int5_fp16_block64_magnitude_50.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int5_fp16_block64_magnitude_60.log

# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int5_fp16_block32_magnitude_10.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int5_fp16_block32_magnitude_20.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int5_fp16_block32_magnitude_30.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int5_fp16_block32_magnitude_50.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int5_fp16_block32_magnitude_60.log

# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int5_fp16_block16_magnitude_10.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int5_fp16_block16_magnitude_20.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int5_fp16_block16_magnitude_30.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int5_fp16_block16_magnitude_50.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int5_fp16_block16_magnitude_60.log

# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int5_fp16_block8_magnitude_10.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int5_fp16_block8_magnitude_20.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int5_fp16_block8_magnitude_30.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int5_fp16_block8_magnitude_50.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int5_fp16_block8_magnitude_60.log

# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int5_fp16_block4_magnitude_10.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int5_fp16_block4_magnitude_20.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int5_fp16_block4_magnitude_30.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int5_fp16_block4_magnitude_50.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int5_fp16_block4_magnitude_60.log

# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.1 > wanda_logs/int5_fp16_block2_magnitude_10.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.2 > wanda_logs/int5_fp16_block2_magnitude_20.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.3 > wanda_logs/int5_fp16_block2_magnitude_30.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.5 > wanda_logs/int5_fp16_block2_magnitude_50.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method magnitude_unstructured --target_sparsity 0.6 > wanda_logs/int5_fp16_block2_magnitude_60.log


# ####




# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int5_fp16_block128_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int5_fp16_block128_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int5_fp16_block128_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int5_fp16_block128_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 128 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int5_fp16_block128_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int5_fp16_block64_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int5_fp16_block64_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int5_fp16_block64_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int5_fp16_block64_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 64 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int5_fp16_block64_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int5_fp16_block32_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int5_fp16_block32_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int5_fp16_block32_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int5_fp16_block32_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 32 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int5_fp16_block32_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int5_fp16_block16_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int5_fp16_block16_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int5_fp16_block16_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int5_fp16_block16_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 16 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int5_fp16_block16_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int5_fp16_block8_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int5_fp16_block8_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int5_fp16_block8_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int5_fp16_block8_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 8 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int5_fp16_block8_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int5_fp16_block4_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int5_fp16_block4_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int5_fp16_block4_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int5_fp16_block4_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 4 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int5_fp16_block4_sparsegpt_60.log

# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.1 > wanda_logs/int5_fp16_block2_sparsegpt_10.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.2 > wanda_logs/int5_fp16_block2_sparsegpt_20.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.3 > wanda_logs/int5_fp16_block2_sparsegpt_30.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.5 > wanda_logs/int5_fp16_block2_sparsegpt_50.log
# python mxfp_wanda.py --w_elem int5 --a_elem fp16 --block_size 2 --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.6 > wanda_logs/int5_fp16_block2_sparsegpt_60.log


python mxfp_wanda.py --wanda_checkpoints --target_sparsity 0.4 > wanda_logs/baseline_wanda_magnitude_40.log
# python mxfp_wanda.py --wanda_checkpoints --wanda_method wanda_unstructured --target_sparsity 0.4 > wanda_logs/baseline_wanda_wanda_40.log
# python mxfp_wanda.py --wanda_checkpoints --wanda_method sparsegpt_unstructured --target_sparsity 0.4 > wanda_logs/baseline_wanda_sparsegpt_40.log

#############
# TODO: Fix Finetuning
#
# python mxfp_pruning.py --w_elem int4 --a_elem fp16 --block_size 128 --pruning_method oneshot --target_sparsity 0.1 --post_pruning_quant > pruning_logs/test_int4_fp16_128_oneshot_10_nofinetune_post.log
# python mxfp_pruning.py --w_elem int4 --a_elem fp16 --block_size 128 --pruning_method oneshot --target_sparsity 0.2 --post_pruning_quant > pruning_logs/test_int4_fp16_128_oneshot_20_nofinetune_post.log
# python mxfp_pruning.py --w_elem int4 --a_elem fp16 --block_size 128 --pruning_method oneshot --target_sparsity 0.3 --post_pruning_quant > pruning_logs/test_int4_fp16_128_oneshot_30_nofinetune_post.log
# python mxfp_pruning.py --w_elem int4 --a_elem fp16 --block_size 128 --pruning_method oneshot --target_sparsity 0.4 --post_pruning_quant > pruning_logs/test_int4_fp16_128_oneshot_40_nofinetune_post.log
# python mxfp_pruning.py --w_elem int4 --a_elem fp16 --block_size 128 --pruning_method oneshot --target_sparsity 0.5 --post_pruning_quant > pruning_logs/test_int4_fp16_128_oneshot_50_nofinetune_post.log
# python mxfp_pruning.py --w_elem int4 --a_elem fp16 --block_size 128 --pruning_method oneshot --target_sparsity 0.6 --post_pruning_quant > pruning_logs/test_int4_fp16_128_oneshot_60_nofinetune_post.log
