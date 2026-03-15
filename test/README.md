# Lifter End-to-End Testing

This folder contains testing infrastructure and test cases for verifying the correctness of the lifted LLVM IR against expected outputs.

## Usage

1. **Run Full Pipeline (Lift + Test)**:
   ```bash
   ./test.py
   ```
   This executes the lifter and runs the full test suites.

2. **Run Tests Only (Skip Lifter)**:
   ```bash
   ./test.py --no-run-lifter
   ```
   This bypasses the lifting phase and directly executes existing LLVM IR test cases.

3. **Inspect and Visualize Artifacts**:
   Test results and data are dumped into `artifacts/`. You can visualize these artifacts to debug discrepancies:
   ```bash
   ./artifact_visualizer.py artifacts/<artifact_name>
   ```

---

## PyCUDA Quirks & Recompilation Requirement

Directly installing `pycuda` via pip often compiles against an older CUDA toolkit version (e.g., 11.5) compared to our local system (e.g., 12.6/12.7). To avoid mismatches, you may need to force a recompilation of `pycuda`.

```bash
export CUDA_HOME=/usr/local/cuda-12.6 # Ensure this points to the correct version on your system
export PATH=$CUDA_HOME/bin:$PATH
export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH

pip uninstall pycuda -y
pip install pycuda --no-binary=pycuda
```

**Verification:**
Launch a Python shell and verify the driver version aligns with your intended CUDA toolkit:
```python
>>> import pycuda.driver as drv
>>> drv.init() 
>>> drv.Device.count()
1
>>> drv.get_driver_version()
12070
>>> drv.get_version()
(12, 6, 0)
```
