#!/usr/bin/env bash

# NOTE: do not use gdb, if you use gdb, after "r", the disassembly will still just contain CPU assembly, not GPU SASS
script -q -c "cuda-gdb -x x.gdb test" -O output.txt