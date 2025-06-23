#!/bin/bash

set -e

cd ..

# Remove existing container if exists (optional)
docker rm -f my-sass-lifter || true

docker build -t sass-lifter:latest -f Dockerfile .
docker run -v "$(pwd):/app" -p 127.0.0.1:8000:8000 --name my-sass-lifter sass-lifter:latest


# Generate .ll from .cu using clang

# Remove existing container if exists (optional)
docker rm -f my-clang-llgen || true

docker build -t clang-llgen:latest -f llvm_gen.dockerfile .
docker run -v "$(pwd):/app" --name my-clang-llgen clang-llgen:latest