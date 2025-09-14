Evidence 5 is meant to be run on the 2080 machine that has Turing GPU.

It also has CUDA 12.1 driver installed instead of the newer CUDA 12.7 on VAMP.

The docker image we're using will be deleted soon. So, we use the following command to save it:

```bash
docker pull nvcr.io/nvidia/cuda:12.1.0-devel-ubuntu22.04
docker images | grep cuda
docker save -o cuda-12-1-0-ubuntu-22-04.tar nvcr.io/nvidia/cuda:12.1.0-devel-ubuntu22.04
```