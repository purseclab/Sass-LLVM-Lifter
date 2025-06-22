#!/bin/bash

# Compile from .cu to .ll directly with clang
# TODO look into the use of optimization flags and its effect on the output
# --target=nvptx64-nvidia-cuda ???? 


# Check if jq is installed
if ! command -v jq &> /dev/null
then
    echo "Error: jq is not installed. Please install jq first."
    exit 1
fi

# Read config.json
CONFIG_FILE="config.json"

CUDA_FILE=$(jq -r '.cu2sass.cuda_file' "$CONFIG_FILE")
LLVM_OUTPUT_BASE=$(jq -r '.lifter.output_file' "$CONFIG_FILE")

# Check if LLVM_OUTPUT_BASE ends with .ll
if [[ "$LLVM_OUTPUT_BASE" == *.ll ]]; then
    # Replace .ll with _clang.ll
    LLVM_OUTPUT="${LLVM_OUTPUT_BASE%.ll}_clang.ll"
else
    echo "Error: output_file does not end in .ll: $LLVM_OUTPUT_BASE"
    exit 1
fi

echo "Compiling $CUDA_FILE to LLVM IR..."
echo "Output will be saved as $LLVM_OUTPUT"

# Compile CUDA to LLVM IR using clang
clang --target=nvptx64-nvidia-cuda -emit-llvm -S -o "../output/3_llvm_ir/$LLVM_OUTPUT" "../input/$CUDA_FILE"

if [ $? -eq 0 ]; then
    echo "Success! LLVM IR written to $LLVM_OUTPUT"
else
    echo "Error: Compilation failed."
    exit 1
fi