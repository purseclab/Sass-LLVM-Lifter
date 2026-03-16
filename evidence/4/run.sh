#!/usr/bin/env bash

# NOTE: Do not use gdb. If you use gdb and type "r" (to run), the disassembly will still only show CPU assembly, not GPU SASS.
script -q -c "cuda-gdb -x x.gdb test" -O output.txt