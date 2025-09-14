#!/usr/bin/env bash

set -e

cat /proc/sys/kernel/randomize_va_space
sysctl kernel.randomize_va_space=0 # NOTE: it seems like setting this will be remembered after the script ends! So if it was set to 1, it'll remain 1 the next time you launch the docker container. That's probably because we're modifying it with --privileged container followed by sysctl command, and so even the host's ASLR is disabled.

cleanup() {
    echo "Cleaning up..."
    rm test_exec
    sysctl kernel.randomize_va_space=1 # Re-enable ASLR
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




cuda-gdb ./test_exec \
    -ex "set breakpoint pending on" \
    -ex "b $KERNEL_NAME"
    # -ex "set \$break_addr = \"0x00007fffdb26c2a0\"" \
    # -ex "set \$reg_lo = \"R4\"" \
    # -ex "set \$reg_hi = \"R5\"" \
    # -ex "source scripts/gdb_print_at_bp.gdb"

# Pre-screening with compute-sanitizer
compute-sanitizer ./test_exec
# rm test_exec