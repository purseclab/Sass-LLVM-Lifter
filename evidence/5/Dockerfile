# if we use 18.04, we can directly install python 3.6 instead of going through conda or deadsnakes ppa etc, but the problem is that our binary requires newer glibc
# note that for the 2080 machine, we can only install cuda 12.4 the latest

# I think that the cuda image used here cannot be higher version than the CUDA as seen in nvidia-smi, or there'll be issues with using python in cuda-gdb... it'll say libpython3.6 is missing and when we use conda to provide python3.6 and LD_LIBRARY_PATH, it'll still complain other things such as "Attempted to call a python binding that dlsym failed to load." which might be because conda's lib is different from native system lib (unsure)

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

# I have no idea where the python 3.10 came from, but cuda-gdb demanded for libpython3.10

RUN apt-get install -y --no-install-recommends \
    python3.11 \
    libpython3.11 \
    libpython3.10 \
    python3-pip \
    && apt-get clean


# Set working directory, files will be copied here inside the docker container
WORKDIR /app

CMD ["bash", "-c", "/app/evidence/5/run.sh"]