# NOTE: -base- doesnt not have nvcc # FROM nvidia/cuda:12.5.0-base-ubuntu22.04

# Docker build is cached, if you suspect that the cache is causing issues, you can use the --no-cache option to build the image without using the cache.
# there's also option to mount your source code instead of copying it

FROM nvidia/cuda:12.5.0-devel-ubuntu22.04

# Stage 1: Install system packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    tree \
    && apt-get clean

WORKDIR /app

RUN apt-get install -y --no-install-recommends \
    jq \
    wget \
    libyaml-cpp-dev \
    && apt-get clean

RUN wget https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 -O /usr/local/bin/yq &&\
    chmod +x /usr/local/bin/yq

# CMD ["sh", "-c", "ls -al && pwd && tree /app && nvcc --version && cuobjdump --version"]
CMD ["sh", "-c", "./scripts/debug.sh"]