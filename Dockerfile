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

# Set working directory, files will be copied here inside the docker container
WORKDIR /app

# Copy files, recursive
COPY . .

RUN pip install -r requirements.txt

# note: RUN is for building the image, CMD is for running the container, there can only be one CMD instruction in a Dockerfile

# CMD ["sh", "-c", "ls -al && pwd && tree /app && nvcc --version && cuobjdump --version"]
CMD ["sh", "-c", "cd launch && ./lifter.sh"]