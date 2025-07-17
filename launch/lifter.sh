#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "$SCRIPT_DIR/../src"
python3 cu2sass.py
export LLVMLITE_ENABLE_OPAQUE_POINTERS=1
python3 main.py