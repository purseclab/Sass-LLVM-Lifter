#!/bin/bash

set -e

# clang-20 --version
# nvcc --version
which fatbinary

# Compile from .cu to .ll directly with clang


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
    LLC_OUTPUT="${LLVM_OUTPUT_BASE%.ll}_clang_llc.ptx"
else
    echo "Error: output_file does not end in .ll: $LLVM_OUTPUT_BASE"
    exit 1
fi

echo "Compiling $CUDA_FILE to LLVM IR..."
echo "Output will be saved as $LLVM_OUTPUT"

# Compile CUDA to LLVM IR using clang
# --cuda-device-only flag needed to prevent "fatbinary fatal   : fatbinary elf mismatch: elf not '64bit'"
clang++-20 -emit-llvm -S --cuda-device-only "../input/$CUDA_FILE" --cuda-gpu-arch=sm_75 -o "../output/3_llvm_ir/${LLVM_OUTPUT}"

if [ $? -eq 0 ]; then
    echo "Success! LLVM IR written"
else
    echo "Error: Compilation failed."
    exit 1
fi

# llc's (llvm) version has to match the clang version used
llc-20 -march=nvptx64 -mcpu=sm_70 ../output/3_llvm_ir/${LLVM_OUTPUT} -o ../output/4_ptx/${LLC_OUTPUT}