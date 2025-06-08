# NOTE: -base- doesnt not have nvcc # FROM nvidia/cuda:12.5.0-base-ubuntu22.04

FROM nvidia/cuda:12.5.0-devel-ubuntu22.04

# Stage 1: Install system packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3.11 \
    python3-pip \
    build-essential \
    tree \
    && apt-get clean

# Set working directory
WORKDIR /app

# Copy files, recursive
COPY . .

RUN pip install -r requirements.txt

# note: RUN is for building the image, CMD is for running the container, there can only be one CMD instruction in a Dockerfile

CMD ["sh", "-c", "ls && pwd && tree && nvcc --version"]