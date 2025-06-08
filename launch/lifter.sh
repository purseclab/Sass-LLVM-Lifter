#!/bin/bash

set -e

cd ../src
python3 cu2sass.py
python3 main.py