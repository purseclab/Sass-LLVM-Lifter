#!/usr/bin/env bash

set -e

# NOTE: Do not use gdb. If you use gdb and type "r" (to run), the disassembly will still only show CPU assembly, not GPU SASS.

# source /root/miniconda3/etc/profile.d/conda.sh
# conda activate py36

# dpkg -l | grep python3.6


# python3.6 --version
# which python3.6
python3 --version

# ls -al /root/miniconda3/envs/py36/lib
# ls -al /root/miniconda3/envs/py36/lib/libpython3.6m.so
cd evidence/5

# LD_LIBRARY_PATH=/root/miniconda3/envs/py36/lib:$LD_LIBRARY_PATH \
# LD_PRELOAD=/root/miniconda3/envs/py36/lib/libpython3.6m.so.1.0 \
# cuda-gdb -x x.gdb test


script -q -c "cuda-gdb -x x.gdb test" -O output.txt