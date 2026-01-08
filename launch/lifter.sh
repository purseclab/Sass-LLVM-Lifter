#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export PARENT_FOLDER_NAME=$(basename "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)") # depending on where docker.sh is (symlinked) at, this var will be different; export so that the python scripts can see this var
# Read config.json
CONFIG_FILE="$SCRIPT_DIR/config.json"

LLVM_OUTPUT=$(jq -r '.lifter.output_file' "$CONFIG_FILE")
LLVM_OUTPUT_LINKED="${LLVM_OUTPUT%.ll}_linked.ll"
LLVM_RAW_OUTPUT="${LLVM_OUTPUT%.ll}_raw.ll"
LLC_OUTPUT="${LLVM_OUTPUT%.ll}_lifted_llc.ptx"

LLC_OUTPUT_DIR="$SCRIPT_DIR/../output/4_ptx"
LLC_OUTPUT_FULLDIR="$LLC_OUTPUT_DIR/${LLC_OUTPUT}"

CUBIN_OUTPUT_DIR="$SCRIPT_DIR/../output/5_exec_cubin_and_tmp_files"
CUBIN_OUTPUT_NAME="${LLVM_OUTPUT%.ll}_lifted.cubin"

cd "$SCRIPT_DIR/../src"
python3 cu2sass.py

OPAQUE=$(jq -r 'if .opaque_pointers == null then true else .opaque_pointers end' "$CONFIG_FILE") # default true
IS_DECOMPILE=$(jq -r 'if .is_decompile == null then false else .is_decompile end' "$CONFIG_FILE") # default false

if [ "$OPAQUE" = "true" ]; then
    # SHOULD also install llvm 20
    export LLVMLITE_ENABLE_OPAQUE_POINTERS=1
else
    export LLVMLITE_ENABLE_OPAQUE_POINTERS=0
fi





python3 main.py

# simplify the RAW LLVM IR Output we produced
mv "$SCRIPT_DIR/../output/3_llvm_ir/${LLVM_OUTPUT}" "$SCRIPT_DIR/../output/3_llvm_ir/${LLVM_RAW_OUTPUT}"
opt -passes="simplifycfg,mem2reg,dce,loop-load-elim,mergereturn" --mtriple=nvptx64-nvidia-cuda -S "$SCRIPT_DIR/../output/3_llvm_ir/${LLVM_RAW_OUTPUT}" -o "$SCRIPT_DIR/../output/3_llvm_ir/${LLVM_OUTPUT}"

# generate ptx from .ll using llc

# Check if jq is installed
if ! command -v jq &> /dev/null
then
    echo "Error: jq is not installed. Please install jq first."
    exit 1
fi

# llvm-link "$SCRIPT_DIR/../output/3_llvm_ir/${LLVM_OUTPUT}" \
#           /usr/local/cuda/nvvm/libdevice/libdevice.10.bc \
#           -o "$SCRIPT_DIR/../output/3_llvm_ir/${LLVM_OUTPUT_LINKED}"

if [[ "$IS_DECOMPILE" != "true" ]]; then
    llc -march=nvptx64 -mcpu=sm_75 "$SCRIPT_DIR/../output/3_llvm_ir/${LLVM_OUTPUT}" -o "$LLC_OUTPUT_FULLDIR"
    # compile ptx into cubin, and then open the file in Nsight
    # https://forums.developer.nvidia.com/t/how-can-i-map-ptx-instructions-to-sass-instructions/313100/4
    nvcc -cubin -g -G -arch=sm_75  $LLC_OUTPUT_FULLDIR -o "$CUBIN_OUTPUT_DIR/$CUBIN_OUTPUT_NAME"
fi

if [[ "$IS_DECOMPILE" = "true" ]]; then
    # produce decompiled C src file
    
    # echo $CONFIG_FILE
    # tree /build
    # which retdec-llvmir2hll

    # NOTE: if there's any problems with retdec-llvmir2hll, then remove the line in Dockerfile that removes all other folders in retdec/ except bin/
    
    # use sed to remove incompatible attributes
    sed -i -E 's/(nofree|nosync|willreturn|speculatable|readnone) //g' "$SCRIPT_DIR/../output/3_llvm_ir/$LLVM_OUTPUT"
    retdec-llvmir2hll -target-hll=c -o "$SCRIPT_DIR/output/${LLVM_OUTPUT%.ll}.c" "$SCRIPT_DIR/../output/3_llvm_ir/$LLVM_OUTPUT"
fi


# -debug-pass=Structure

# opt-20 -passes="simplifycfg,mem2reg,dce,loop-load-elim,mergereturn" --mtriple=nvptx64-nvidia-cuda -S "$SCRIPT_DIR/../output/3_llvm_ir/${LLVM_OUTPUT}" -o "$SCRIPT_DIR/../output/4_ptx/output.ll"
# opt-20 -passes="default<O1>" --mtriple=nvptx64-nvidia-cuda -S "$SCRIPT_DIR/../output/3_llvm_ir/${LLVM_OUTPUT}" -o "$SCRIPT_DIR/../output/4_ptx/output.ll"

# sed -i 's/.visible .func/.visible .entry/' "$LLC_OUTPUT_FULLDIR" # without this, the host code will fail to find the kernel function symbol