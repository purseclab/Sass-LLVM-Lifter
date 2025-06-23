# ideally we should use 12.5 but clang 20 only partially supports CUDA 12.4 and 12.5, so we use 12.3
# see https://hub.docker.com/r/nvidia/cuda/ for image selection
FROM nvidia/cuda:12.5.0-devel-ubuntu22.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    jq \
    wget \
    && apt-get clean

# Set working directory, files will be copied here inside the docker container
WORKDIR /app

# RUN apt-get update && apt-get install -y --no-install-recommends \
#     nvidia-utils-550 \
#     && apt-get clean

# # GPU passthrough, need to add --gpus all to the docker run command
# RUN apt-get update && apt-get install -y --no-install-recommends \
#     wget \
#     && apt-get clean
# RUN wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.0-1_all.deb
# RUN dpkg -i cuda-keyring_1.0-1_all.deb

# Install newer version of clang (apt for ubuntu 22.04 only have clang 14, but clang 14 only support up to CUDA 11.5)
# based on https://ubuntuhandbook.org/index.php/2023/09/how-to-install-clang-17-or-16-in-ubuntu-22-04-20-04/
RUN wget https://apt.llvm.org/llvm.sh
RUN chmod u+x llvm.sh

# lsb_release, software-properties-common, gnupg are used by llvm.sh
RUN apt-get update && apt-get install -y --no-install-recommends \
    lsb-release \
    software-properties-common \
    gnupg \
    && apt-get clean

RUN ./llvm.sh 20

CMD ["sh", "-c", "cd launch && ./clang_ll_gen.sh"]