# Note: Using Ubuntu 18.04 would allow direct installation of Python 3.6, but our binary requires a newer glibc version.
# The CUDA image version should not exceed the CUDA version available on the host (as seen in nvidia-smi) to avoid compatibility issues.
# Installing Python via conda or from non-system sources may cause issues with cuda-gdb due to library mismatches.

FROM nvidia/cuda:12.1.0-devel-ubuntu22.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    jq \
    wget \
    && apt-get clean

# RUN mkdir -p ~/miniconda3
# RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
# RUN bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
# RUN rm ~/miniconda3/miniconda.sh

# # Add conda to PATH

# # note: can't use ~/miniconda3/bin/conda because ~ won't be expanded during docker build
# # NOTE: Installing conda means that your python path will change to conda's python
# ENV PATH=/root/miniconda3/bin:$PATH


# # accept conda tos

# RUN conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main
# RUN conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r

# RUN conda create -n py36 python=3.6 -y
# RUN conda init


# Install python 3.6

# RUN apt-get update && apt-get install -y --no-install-recommends \
#     software-properties-common \
#     && apt-get clean

# RUN add-apt-repository ppa:deadsnakes/ppa

# RUN apt-get update

# RUN apt-get install -y --no-install-recommends \
#     libpython3.6 \
#     python3.6 \
#     && apt-get clean

# Note: libpython3.10 is required by cuda-gdb, even though Python 3.10 is not explicitly installed elsewhere.

RUN apt-get install -y --no-install-recommends \
    python3.11 \
    libpython3.11 \
    libpython3.10 \
    python3-pip \
    && apt-get clean


# Set working directory, files will be copied here inside the docker container
WORKDIR /app

CMD ["bash", "-c", "/app/evidence/5/run.sh"]