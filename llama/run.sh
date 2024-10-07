#!/bin/bash

# Arrays for all the options
w_elem_options=("int8" "int4" "fp8_e5m2" "fp8_e4m3" "fp6_e2m3" "fp4_e2m1")
a_elem_options=("int8" "int4" "fp8_e5m2" "fp8_e4m3" "fp6_e2m3" "fp4_e2m1" "fp16")
# a_elem_options=("fp16")
block_size_options=("2" "4" "8" "16" "32" "64" "128" "256" "512" "1024" "2048" "4096" "8192" "16384")
# block_size_options=("2048" "4096" "8192" "16384")
scalar_format_options=("fp" "bfloat")

# Iterate over all combinations of w_elem, a_elem, block_size, and scalar_format
for w_elem in "${w_elem_options[@]}"; do
  for a_elem in "${a_elem_options[@]}"; do
    for block_size in "${block_size_options[@]}"; do
      for scalar_format in "${scalar_format_options[@]}"; do
        # Construct the command
        command="python mxfp_perplexity.py --w_elem $w_elem --a_elem $a_elem --block_size $block_size --scalar_format $scalar_format"
        
        # Create a log file name based on the current argument values
        log_file="logs/${w_elem}_${a_elem}_block${block_size}_${scalar_format}.log"
        
        # Run the command and save the output to the log file
        # echo "Running: $command > $log_file"
        echo "$command > $log_file" 
        # $command > $log_file
      done
    done
  done
done
