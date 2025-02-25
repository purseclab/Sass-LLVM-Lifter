# Lift Nvidia SASS to LLVM IR

## Usage

```sh
nvcc -arch=sm_75 -o test test.cu
cuobjdump -sass test > test.sass

# extract to .cubin (The file we want here is  test.2.sm_75.cubin)
cuobjdump -xelf all test

# Dissasembly the code
nvdisasm --print-code test.2.sm_75.cubin > test_code.sass

# Lift test_relu.sass to test.ll
python main.py
```


## Code Structure

+ IR: s2lir
+ Parser

## Challenge

+ SASS is not documented, it means we can only "guess" (Collect Online info and Compare Source Code and Binary information) the meaning if each instruction. 

## TODO

+ LDG and LDL, local variables and global variables
+ 


## Notes

+ The initial version only supports SM_75.

## Acknowledgement

## Refs
+ https://kuterdinel.com/nv_isa_sm89/FMNMX.html
+ https://llvmlite.readthedocs.io/en/latest/user-guide/ir/ir-builder.html#id6
+ https://forums.developer.nvidia.com/t/ampere-sass-annotation/176758
+ [Decoding Cuda Binary](https://people.cs.rutgers.edu/zz124/assets/pdf/cgo19.pdf)


