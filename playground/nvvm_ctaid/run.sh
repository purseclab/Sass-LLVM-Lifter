#!/usr/bin/env bash

# TODO correctness to be verified ltr

set -e
python3 test_nvvm.py
llc -march=nvptx64 -mcpu=sm_70 kernel.ll -o kernel.ptx
nvcc -o test_cuda test_cuda.cu -lcuda
./test_cuda