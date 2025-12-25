Run `./test.py` to run the lifter + test cases. You can also run `./test.py --no-run-lifter` to only run the test cases on existing lifted LLVM IR.

Then you can inspect the test results in `artifacts/`. You can further visualize it with `./artifact_visualizer.py artifacts/<artifact_name>`.




## MISC

If we directly pip install pycuda, `drv.get_version()` would show that it was built for CUDA 11.5, which is much older than the 12.7 on our system. Instead, we need to recompile pycuda.

```
export CUDA_HOME=/usr/local/cuda-12.6 # on our system, /usr/local/cuda is pointed to 12.6
export PATH=$CUDA_HOME/bin:$PATH
export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH

pip uninstall pycuda -y
pip install pycuda --no-binary=pycuda
```

Now,

```
>>> import pycuda.driver as drv
>>> drv.init() 
>>> drv.Device.count()
1
>>> drv.get_driver_version()
12070
>>> drv.get_version()
(12, 6, 0)
```

