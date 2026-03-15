# Evidence / Experimentation Playground

The `evidence/` directory contains documentation and reproducible scripts for various experiments conducted to empirically discover and verify the undocumented behavior of the NVIDIA SASS Instruction Set Architecture (ISA).

Because SASS semantics are not officially documented by NVIDIA, we had to rely on reverse-engineering techniques such as compiling small, targeted C/CUDA snippets, observing the assembled SASS, and analyzing runtime register changes using `cuda-gdb` to guide the logic implemented in the lifter.

## Directory Structure

Each numbered sub-directory (e.g., `evidence/5/`) represents an isolated experiment targeting a specific instruction subset, data access pattern, or architectural quirk.

Within these directories, you will generally find:
- **`run.sh`**: An executable bash script that automates the compilation and debugging process for the experiment.
- **`*.txt` (Output Logs)**: Readily accessible output logs from the debugging sessions, demonstrating the instruction's behavioral footprints without needing to re-run the script.
- **Additional `README.md` files**: Detailed context regarding the specific constraints, expected outcomes, or hardware requirements of the experiment.
