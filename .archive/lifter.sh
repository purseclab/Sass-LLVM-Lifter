#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# Read config.json
CONFIG_FILE="$SCRIPT_DIR/../launch/config.json"

LLVM_OUTPUT=$(jq -r '.lifter.output_file' "$CONFIG_FILE")
LLC_OUTPUT="${LLVM_OUTPUT%.ll}_lifted_llc.ptx"

LLC_OUTPUT_FULLDIR="$SCRIPT_DIR/../output/4_ptx/${LLC_OUTPUT}"

cd "$SCRIPT_DIR/../src"
python3 cu2sass.py
export LLVMLITE_ENABLE_OPAQUE_POINTERS=1


# ptxas $LLC_OUTPUT_FULLDIR -arch=sm_70 -o kernel.cubin
# fatbinary --help
# LLC_OUTPUT_FULLDIR="$SCRIPT_DIR/../output/4_ptx/test_clang_llc.ptx"
echo $LLC_OUTPUT_FULLDIR
export NVCC_CACHE_DISABLE=1
rm -f kernel.fatbin.c kernel.fatbin.o host.o my_program
fatbinary -64 --embedded-fatbin=kernel.fatbin.c --image=profile=compute_70,file=$LLC_OUTPUT_FULLDIR
# nvcc -arch=sm_70 -c kernel.fatbin.c -o kernel.fatbin.o
# nvcc -arch=sm_70 -c host.cu -o host.o
# nvcc -arch=sm_70 host.o kernel.fatbin.o -o my_program -lcudart

# cuobjdump -symbols ../src/kernel.fatbin.o
# also use cuobjdump -sass ../src/kernel.fatbin.o to confirm content
# cuobjdump -ptx ../src/kernel.fatbin.o
# nm -a ../src/kernel.fatbin.o

# nvcc -arch=sm_70 -dc kernel.fatbin.c -o kernel.fatbin.o

# https://stackoverflow.com/questions/78655890/linking-cuda-device-functions

# we also need to edit ptx so that instead of .entry, it needs to be .func, and need to remove .ptr .align 1 within the parameters
nvcc -g -G -arch=sm_75 --keep-device-functions -dc test_lifted_llc.ptx -o kernel.fatbin.o
echo "BRUH1"
nvcc -g -G -arch=sm_75 --keep-device-functions -dc host2.cu -o host2.o
echo "BRUH2"
# ptx is lost after this (actually it doesnt, if we do cuobjdump -all -ptx on my_program, it'll show up again (https://forums.developer.nvidia.com/t/keep-ptx-with-cuda-separable-compilation/337648/4))
nvcc -g -G -arch=sm_75 --keep-device-functions -dlink kernel.fatbin.o host2.o -o dlink.o
echo "BRUH3"
nvcc -g -G -arch=sm_75 --keep-device-functions host.cu host2.o kernel.fatbin.o dlink.o -o my_program -lcudart
# if we do -arch=compute_75 here, the cuobjdump -all -sass or -ptx would be much much longer, but theyll still both contain sass and ptx
# we might wanna add -G etc

# the report from profiling my_program didnt display ptx-sass view, but it turns out all we needed to do is to compile ptx into cubin, and then open the file in Nsight (you cannot open an ELF exec, but cubin is okay)
# https://forums.developer.nvidia.com/t/how-can-i-map-ptx-instructions-to-sass-instructions/313100/4
nvcc -cubin -g -G -arch=sm_75  test_lifted_llc.ptx -o test_lifted_llc_ptx.cubin

python3 main.py



# generate ptx from .ll using llc

# Check if jq is installed
if ! command -v jq &> /dev/null
then
    echo "Error: jq is not installed. Please install jq first."
    exit 1
fi


llc-20 -march=nvptx64 -mcpu=sm_75 "$SCRIPT_DIR/../output/3_llvm_ir/${LLVM_OUTPUT}" -o "$LLC_OUTPUT_FULLDIR"


# -debug-pass=Structure

# opt-20 -passes="simplifycfg,mem2reg,dce,loop-load-elim,mergereturn" --mtriple=nvptx64-nvidia-cuda -S "$SCRIPT_DIR/../output/3_llvm_ir/${LLVM_OUTPUT}" -o "$SCRIPT_DIR/../output/4_ptx/output.ll"
# opt-20 -passes="default<O1>" --mtriple=nvptx64-nvidia-cuda -S "$SCRIPT_DIR/../output/3_llvm_ir/${LLVM_OUTPUT}" -o "$SCRIPT_DIR/../output/4_ptx/output.ll"

# sed -i 's/.visible .func/.visible .entry/' "$LLC_OUTPUT_FULLDIR" # without this, the host code will fail to find the kernel function symbol