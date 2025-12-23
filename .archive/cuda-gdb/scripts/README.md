
# Debugging with cuda-gdb

## Printing out constant memory values

```
(cuda-gdb) p ((float *) $_cuda_const_bank(0x0, 0x160)) 
$3 = (float *) 0x7fffda220160

(cuda-gdb) p ((float *) $_cuda_const_bank(0x0, 0x160))[0]@4         
$4 = {-2.68435456e+09, 4.59163468e-41, -2.68448563e+09, 4.59163468e-41}

(cuda-gdb) p *((float *) $_cuda_const_bank(0x0, 0x160))             
$5 = -2.68435456e+09

(cuda-gdb) p *((float *) $_cuda_const_bank(0x0, 0x168)) 
$6 = -2.68448563e+09
```

Note: [0]@4 is an array syntax, basically it’ll treat $_cuda_const_bank(0x0, 0x160) as the base float pointer, then it’ll print out 4 floats (in increments of 4 bytes, i think it’s just coincidental that 0x168 corresponds to the 3rd element, or perhaps there’s a buffer of 4 bytes before the next parameter’s float is placed)

