# CUDA-GDB Debugging Scripts

This directory contains some useful cheat sheets, macros, and debugging scripts specifically targeted toward introspecting state during `cuda-gdb` sessions. It is highly beneficial when investigating SASS hardware execution behaviors.

## Printing Out Constant Memory Values

Extracting parameters and constant memory state is critical for understanding kernel inputs.

```gdb
# 1. Resolve pointer to a constant memory bank partition
(cuda-gdb) p ((float *) $_cuda_const_bank(0x0, 0x160)) 
$3 = (float *) 0x7fffda220160

# 2. Extract multiple sequential values using array slice syntax (@N)
(cuda-gdb) p ((float *) $_cuda_const_bank(0x0, 0x160))[0]@4         
$4 = {-2.68435456e+09, 4.59163468e-41, -2.68448563e+09, 4.59163468e-41}

# 3. Dereference individual values
(cuda-gdb) p *((float *) $_cuda_const_bank(0x0, 0x160))             
$5 = -2.68435456e+09

(cuda-gdb) p *((float *) $_cuda_const_bank(0x0, 0x168)) 
$6 = -2.68448563e+09
```

> [!NOTE]
> The `[0]@4` syntax is a GDB array slice. It treats `$_cuda_const_bank(0x0, 0x160)` as a base floating-point pointer and reads exactly 4 contiguous floats (16 bytes). Note that an argument mapping at `0x168` might intentionally align to the 3rd float index (an 8-byte offset), representing padding or specific 64-bit argument alignment constraints within constant memory.
