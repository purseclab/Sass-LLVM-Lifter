# NVLift: A SASS-to-LLVM IR Binary Lifter

NVLift is a proof-of-concept (PoC) demonstrating the viability of lifting undocumented NVIDIA SASS (specifically targeting the SM_75/Turing Architecture) into LLVM Intermediate Representation (IR). The pipeline also supports transpiling the extracted LLVM IR into C code using `retdec`.

> **Note on Project Maturity**: NVLift is currently in an experimental state. To facilitate rapid prototyping, the lifter utilizes heuristic parsing and string-based register mapping, among other simplifications. While these mechanisms work well for small kernels and initial testing, they are not yet a substitute for a robust, production-scale decompiler. Correctness has only been validated on a limited subset of simple kernels.

## Quick Start & Usage

The lifter is designed to run in an isolated Docker environment to ensure dependency consistency.

### 1. Docker Setup
If you haven't configured Docker to run without `sudo` on your system, do the following:
```bash
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
```

### 2. Configuration (`launch/config.json`)
Before executing the lifter, you must define your input and output targets in `launch/config.json`. 
For example, if you want to lift a kernel named `gru`, configure the paths as follows:
```json
{
    "lifter": {
        "input_file": "gru.sass",
        "output_file": "gru.ll"
    },
    "cu2sass": {
        "cuda_file": "gru.cu",
        "select_cubin": "gru.2.sm_75.cubin"
    }
}
```

### 3. Execution
Run the launch script. This will start the Docker container and execute the lifter pipeline.
```bash
cd launch
./docker.sh
```

**Troubleshooting Permissions:** 
Because the lifter runs inside a Docker container, the output files may be owned by root. If you encounter permission issues when accessing the output, simply reclaim ownership:
```bash
sudo chown -R $USER:$USER /path/to/project/output
```

*Tip: For an interactive debugging session with a GUI, use `/debug/nvsight.sh`. Run it on your host, forward the VNC port (`ssh -L 5901:localhost:5901 user@host -N`), and connect a VNC client to `localhost:5901` (Password: `secure`). See `/debug/README.md` for more details.*

## Repository Organization

- **`src/`**: Core python lifting engine logic, partitioned into `parser` (SASS to JSON), `passes` (Analysis and CFG creation), and `s2lir` (Internal Intermediate Representation).
- **`decompile/`**: An extension to the original pipeline. It runs the lifter and feeds the result into `retdec` to produce decompiled C code. See `decompile/README.md`.
- **`debug/`**: Scripts and documentation for analyzing NVIDIA SASS using NVIDIA Nsight Compute from a docker container with RealVNC. See `debug/README.md`.
- **`test/`**: End-to-end unit tests evaluating execution correctness of the emitted LLVM IR. See `test/README.md`.
- **`evidence/`**: An exploration playground. Contains repeatable experiments and GDB debugging logs that empirically reverse-engineer and verify the semantics of the undocumented SASS ISA. See `evidence/README.md`.
- **`launch/`**: Contains execution scripts and the core input/output configuration mapping (`config.json`).

## Architecture & Lifter Pipeline

The pipeline processes code in several distinct phases:

1. **Disassembly & Target Extraction:** Compiles `.cu` source (or uses existing binary) into `cubin`, then disassembles it to SASS.
2. **Parsing:** Converts raw SASS (`test.sass`) into structured JSON (`parser/sass2json.py`).
3. **IR Construction:** Generates an intermediate representation (`s2lir`) from the JSON (`parser/json2ir.py`).
4. **Analysis Passes:** Runs dataflow and type analyses (e.g., reaching definitions, control-flow graph construction, type inference) on the `s2lir`.
5. **LLVM Lifting:** Emits standard LLVM IR (`test.ll`) based on the enriched `s2lir`.
6. **LLVM to C:** Transpiles the LLVM IR into C code using `retdec` (`decompile/docker.sh`).

### Supported Instructions

Currently, NVLift supports a subset of SM_75 instructions, including but not limited to:
- **Control Flow:** `EXIT`, `BRA`, `NOP`
- **Memory/Data:** `LDG`, `STG`, `MOV/UMOV`, `S2R`, `ULDC`
- **ALU/Math:** `IMAD`, `IADD3/UIADD3`, `FADD`, `FMNMX`, `FMMA`, `IABS`, `I2F/F2I`, `MUFU.RCP`
- **Logic:** `ISETP`, `ULOP3/LOP3/POP3`, `LEA`

*Future updates aim to expand instruction and operator support, particularly for ONNX and TVM-generated kernels.*

## Type Analysis Heuristics

Because SASS is untyped, NVLift infers variable types dynamically using heuristic analysis based on instruction opcodes and modifiers. 

For example:
- **Modifier hints:** `IMAD.WIDE R2, R4, R5, c[0x0][0x160]` informs the lifter that `R2`, `R4`, `R5`, and `c[0x0][0x160]` are Integers. `R4` and `R5` are 32-bit scalars, whereas the destination (`R3||R2`) and constant memory are treated as 64-bit wide.
- **Opcode semantics:** `FMNMX R7, RZ, R2, !PT` implicitly dictates that `R7` and `R2` are floating-point types.
- **Type propagation:** `MOV R2, R4` transfers the type of `R4` to `R2` and vice versa.
- **Type inference:** `LDG R2, [R3]` infers the type of `R2` based on the type of the memory operand.

## Known Challenges
Because NVIDIA's SASS ISA is not officially documented, its semantics must be inferred through empirical testing, reverse-engineering, and pattern-matching against standard CUDA compilation. Future work focuses on improving type inference accuracy, reducing noise in parsed definitions, and verifying full-program execution correctness.

## Acknowledgements

Our initial lifting architecture is built upon the foundational concepts introduced by [SLifter](https://github.com/cupbop/SLifter).

## Citation

If you use NVLift in your research, please cite our paper:

```bibtex
@inproceedings{wan2026nvlift,
  author    = {Wan, Junpeng and Tan, Louis Zheng-Hua and Tian, Dave Jing},
  title     = {{NVLift}: Lifting {NVIDIA} {GPU} Assembly to {LLVM} {IR} for Downstream Security Applications},
  booktitle = {Proceedings of the 2026 {NDSS} Workshop on Binary Analysis Research ({BAR})},
  year      = {2026},
  month     = feb,
  publisher = {Internet Society},
  address   = {San Diego, CA},
  doi       = {10.14722/bar.2026.230028},
  isbn      = {978-1-970672-08-4},
  url       = {https://dx.doi.org/10.14722/bar.2026.230028}
}
```

## References
- [Ampere SASS Annotation](https://forums.developer.nvidia.com/t/ampere-sass-annotation/176758)
- [Decoding CUDA Binary (CGO '19)](https://people.cs.rutgers.edu/zz124/assets/pdf/cgo19.pdf)
- [FMNMX Instruction Details](https://kuterdinel.com/nv_isa_sm89/FMNMX.html)
- [LLVMLite IRBuilder Documentation](https://llvmlite.readthedocs.io/en/latest/user-guide/ir/ir-builder.html)