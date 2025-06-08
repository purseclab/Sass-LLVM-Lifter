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

# This copy step is crucial, without it pip install will not be cached and will run every time you build the image
COPY requirements.txt .

# no-cache-dir option is used to avoid caching the downloaded packages, which can save space in the image
RUN pip install --no-cache-dir -r requirements.txt

# No longer need to copy the source code because we're mounting with -v

# note: RUN is for building the image, CMD is for running the container, there can only be one CMD instruction in a Dockerfile

# CMD ["sh", "-c", "ls -al && pwd && tree /app && nvcc --version && cuobjdump --version"]
CMD ["sh", "-c", "cd launch && ./lifter.sh"]