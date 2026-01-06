# NOTE: -base- doesnt not have nvcc # FROM nvidia/cuda:12.5.0-base-ubuntu22.04

# Docker build is cached, if you suspect that the cache is causing issues, you can use the --no-cache option to build the image without using the cache.
# there's also option to mount your source code instead of copying it

FROM nvidia/cuda:12.5.0-devel-ubuntu22.04

# Stage 1: Install system packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3.11 \
    python3-pip \
    build-essential \
    tree \
    && apt-get clean


RUN apt-get install -y --no-install-recommends \
    python3-dev \
    graphviz \
    graphviz-dev \
    && apt-get clean
# Set working directory, files will be copied here inside the docker container
WORKDIR /app

# This copy step is crucial, without it pip install will not be cached and will run every time you build the image
COPY requirements.txt .

# no-cache-dir option is used to avoid caching the downloaded packages, which can save space in the image
RUN pip install --no-cache-dir -r requirements.txt

# No longer need to copy the source code because we're mounting with -v

# note: RUN is for building the image, CMD is for running the container, there can only be one CMD instruction in a Dockerfile

RUN apt-get install -y --no-install-recommends \
    jq \
    wget \
    && apt-get clean

##### Copied from llvm_gen.dockerfile

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

# assumes clang 20.1.7
ARG LLVM_VERSION
RUN ./llvm.sh ${LLVM_VERSION}

RUN ln -s /usr/bin/llvm-cxxfilt-${LLVM_VERSION} /usr/bin/llvm-cxxfilt && \
    ln -s /usr/bin/llvm-config-${LLVM_VERSION} /usr/bin/llvm-config && \
    ln -s /usr/bin/llvm-dis-${LLVM_VERSION} /usr/bin/llvm-dis && \
    ln -s /usr/bin/llvm-as-${LLVM_VERSION} /usr/bin/llvm-as && \
    ln -s /usr/bin/opt-${LLVM_VERSION} /usr/bin/opt && \
    ln -s /usr/bin/llc-${LLVM_VERSION} /usr/bin/llc && \
    ln -s /usr/bin/clang-${LLVM_VERSION} /usr/bin/clang

# CMD ["sh", "-c", "ls -al && pwd && tree /app && nvcc --version && cuobjdump --version"]
ARG LIFTER_FOLDER
# transfer ARG to ENV so that CMD can see it
ENV LIFTER_FOLDER=${LIFTER_FOLDER}

CMD ["sh", "-c", "cd ${LIFTER_FOLDER} && ./lifter.sh"]