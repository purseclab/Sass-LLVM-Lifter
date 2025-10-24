#!/bin/bash

set -e

NAME="cuda-gdb"

# Remove existing container if exists (optional)
docker rm -f my-$NAME || true

docker build -t $NAME:latest -f Dockerfile .

# -it keeps stdin open and allocates a pseudo-TTY
docker run --gpus all -it \
    -v "$(pwd):/app" \
    -v "$(pwd)/../../output/4_ptx:/ptx" \
    --privileged \
    --name my-$NAME $NAME:latest