#!/usr/bin/env bash

set -e

# NOTE: do not use gdb, if you use gdb, after "r", the disassembly will still just contain CPU assembly, not GPU SASS

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


cuda-gdb -x x.gdb test