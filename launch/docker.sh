#!/bin/bash

set -e

cd ..

# Generate .ll from .cu using clang

# Remove existing container if exists (optional)
docker rm -f my-clang-llgen || true

docker build -t clang-llgen:latest -f llvm_gen.dockerfile .
docker run -v "$(pwd):/app" --name my-clang-llgen clang-llgen:latest

# Remove existing container if exists (optional)
docker rm -f my-sass-lifter || true

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PARENT_FOLDER_NAME=$(basename "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)") # depending on where docker.sh is (symlinked) at, this var will be different

# Read config.json
CONFIG_FILE="$SCRIPT_DIR/$PARENT_FOLDER_NAME/config.json"

OPAQUE=$(jq -r 'if .opaque_pointers == null then true else .opaque_pointers end' "$CONFIG_FILE")

if [ "$OPAQUE" = "true" ]; then
    LLVM_VAL=20
else
    LLVM_VAL=14
fi

docker build --build-arg LLVM_VERSION=$LLVM_VAL --build-arg LIFTER_FOLDER=$PARENT_FOLDER_NAME -t sass-lifter:latest -f Dockerfile .
docker run -v "$(pwd):/app" \
    -p 127.0.0.1:8000:8000 \
    --name my-sass-lifter sass-lifter:latest