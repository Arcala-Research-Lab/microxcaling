#!/bin/bash

# python mxfp_pruning.py --baseline --pruning_method oneshot --target_sparsity 0.1  > pruning_logs/baseline_oneshot_10_nofinetune.log
# python mxfp_pruning.py --baseline --pruning_method oneshot --target_sparsity 0.2  > pruning_logs/baseline_oneshot_20_nofinetune.log
# python mxfp_pruning.py --baseline --pruning_method oneshot --target_sparsity 0.3  > pruning_logs/baseline_oneshot_30_nofinetune.log
# python mxfp_pruning.py --baseline --pruning_method oneshot --target_sparsity 0.4  > pruning_logs/baseline_oneshot_40_nofinetune.log
# python mxfp_pruning.py --baseline --pruning_method oneshot --target_sparsity 0.5  > pruning_logs/baseline_oneshot_50_nofinetune.log
# python mxfp_pruning.py --baseline --pruning_method oneshot --target_sparsity 0.6  > pruning_logs/baseline_oneshot_60_nofinetune.log
# python mxfp_pruning.py --baseline --pruning_method oneshot --target_sparsity 0.7  > pruning_logs/baseline_oneshot_70_nofinetune.log
# python mxfp_pruning.py --baseline --pruning_method oneshot --target_sparsity 0.8  > pruning_logs/baseline_oneshot_80_nofinetune.log
# python mxfp_pruning.py --baseline --pruning_method oneshot --target_sparsity 0.9  > pruning_logs/baseline_oneshot_90_nofinetune.log


# python mxfp_pruning.py --w_elem int4 --a_elem fp16 --block_size 128 --pruning_method oneshot --target_sparsity 0.1 --post_pruning_quant > pruning_logs/int4_fp16_128_oneshot_10_nofinetune.log

# python mxfp_pruning.py --w_elem int4 --a_elem fp16 --block_size 128 --pruning_method oneshot --target_sparsity 0.1 --post_pruning_quant > pruning_logs/test_int4_fp16_128_oneshot_10_nofinetune_post.log
# python mxfp_pruning.py --w_elem int4 --a_elem fp16 --block_size 128 --pruning_method oneshot --target_sparsity 0.2 --post_pruning_quant > pruning_logs/test_int4_fp16_128_oneshot_20_nofinetune_post.log
# python mxfp_pruning.py --w_elem int4 --a_elem fp16 --block_size 128 --pruning_method oneshot --target_sparsity 0.3 --post_pruning_quant > pruning_logs/test_int4_fp16_128_oneshot_30_nofinetune_post.log
python mxfp_pruning.py --w_elem int4 --a_elem fp16 --block_size 128 --pruning_method oneshot --target_sparsity 0.4 --post_pruning_quant > pruning_logs/test_int4_fp16_128_oneshot_40_nofinetune_post.log
python mxfp_pruning.py --w_elem int4 --a_elem fp16 --block_size 128 --pruning_method oneshot --target_sparsity 0.5 --post_pruning_quant > pruning_logs/test_int4_fp16_128_oneshot_50_nofinetune_post.log
python mxfp_pruning.py --w_elem int4 --a_elem fp16 --block_size 128 --pruning_method oneshot --target_sparsity 0.6 --post_pruning_quant > pruning_logs/test_int4_fp16_128_oneshot_60_nofinetune_post.log
