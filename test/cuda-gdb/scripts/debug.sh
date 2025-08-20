#!/usr/bin/env bash

set -e

cleanup() {
    echo "Cleaning up..."
    rm test_exec
}

trap cleanup EXIT

CONFIG="config.yaml"

# Extract input_file from YAML
SETUP=$(yq e '.input_file' $CONFIG)
KERNEL_NAME=$(yq e '.kernel_name' $CONFIG)

if [ -z "$SETUP" ]; then
    echo "Error: input_file not found in $CONFIG"
    exit 1
fi


nvcc -g -G -arch=sm_75 main.cu ./setup/$SETUP -lcuda -lyaml-cpp -o test_exec

if [ $? -eq 0 ]; then
    echo "Compilation successful. Run ./test_exec"
else
    echo "Compilation failed."
fi


# Pre-screening with compute-sanitizer
compute-sanitizer ./test_exec


cuda-gdb ./test_exec \
    -ex "set breakpoint pending on" \
    -ex "b $KERNEL_NAME"

# rm test_exec