#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "$SCRIPT_DIR/../src"
python3 cu2sass.py
export LLVMLITE_ENABLE_OPAQUE_POINTERS=1
python3 main.py

# generate ptx from .ll using llc

# Check if jq is installed
if ! command -v jq &> /dev/null
then
    echo "Error: jq is not installed. Please install jq first."
    exit 1
fi

# Read config.json
CONFIG_FILE="$SCRIPT_DIR/../launch/config.json"

LLVM_OUTPUT=$(jq -r '.lifter.output_file' "$CONFIG_FILE")
LLC_OUTPUT="${LLVM_OUTPUT%.ll}_lifted_llc.ptx"

LLC_OUTPUT_FULLDIR="$SCRIPT_DIR/../output/4_ptx/${LLC_OUTPUT}"

llc-20 -march=nvptx64 -mcpu=sm_70 "$SCRIPT_DIR/../output/3_llvm_ir/${LLVM_OUTPUT}" -o "$LLC_OUTPUT_FULLDIR"
# -debug-pass=Structure

# opt-20 -passes="simplifycfg,mem2reg,dce,loop-load-elim,mergereturn" --mtriple=nvptx64-nvidia-cuda -S "$SCRIPT_DIR/../output/3_llvm_ir/${LLVM_OUTPUT}" -o "$SCRIPT_DIR/../output/4_ptx/output.ll"
# opt-20 -passes="default<O1>" --mtriple=nvptx64-nvidia-cuda -S "$SCRIPT_DIR/../output/3_llvm_ir/${LLVM_OUTPUT}" -o "$SCRIPT_DIR/../output/4_ptx/output.ll"

# sed -i 's/.visible .func/.visible .entry/' "$LLC_OUTPUT_FULLDIR" # without this, the host code will fail to find the kernel function symbol