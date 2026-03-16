#!/usr/bin/env bash

set -e
python3 test_nvvm.py
llc -march=nvptx64 -mcpu=sm_70 kernel.ll -o kernel.ptx
sed -i 's/.visible .func/.entry/' kernel.ptx # without this, the host code will fail to find the kernel function symbol
nvcc -o test_cuda test_cuda.cu -lcuda
./test_cuda