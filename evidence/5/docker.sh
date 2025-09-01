#!/bin/bash

set -e

# Generate .ll from .cu using clang

# Remove existing container if exists (optional)
docker rm -f my-debugger || true

docker build -t debugger:latest -f Dockerfile .
docker run --gpus all -v "$(pwd)/../../:/app" -it --name my-debugger debugger:latest