# Evidence 5 Details

This specific experimentation environment is explicitly meant to be executed on the target RTX 2080, which is a Turing GPU.

### Environment Constraints

We ran on a host machine with the older CUDA 12.1 driver.

### Image Preservation Backup

> [!NOTE]
> NVIDIA periodically prunes older Docker images from their registry. To ensure reproducibility of this experiment, we safeguard the image by pulling and exporting it to a tarball archive locally.

If you are setting this up fresh, generate the backup archive using:
```bash
docker pull nvcr.io/nvidia/cuda:12.1.0-devel-ubuntu22.04
docker images | grep cuda
docker save -o cuda-12-1-0-ubuntu-22-04.tar nvcr.io/nvidia/cuda:12.1.0-devel-ubuntu22.04
```