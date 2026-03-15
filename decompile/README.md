# Decompile / RetDec Pipeline

This directory acts as an extended pipeline that performs the standard SASS-to-LLVM lifting, and subsequently passes the emitted LLVM IR through the `retdec` decompiler to attempt transpilation back into C code.

## Critical Execution Constraint

> [!WARNING]
> You **MUST** execute the Docker launch script from within this `decompile/` directory for the transpilation phase to work correctly. The script inherently detects your launch directory to trigger the retdec-specific steps.

```bash
# Correct Usage
cd decompile/
./docker.sh
```

## Side Effects

> [!IMPORTANT]
> Running `./docker.sh` from this directory **WILL** overwrite the contents of the main `output/` directory in the repository root. Ensure you have backed up any previous LLVM IR output before running the decompilation pipeline.
