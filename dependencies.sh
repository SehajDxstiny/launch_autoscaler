#!/bin/bash

apt-get update -y && \
    apt-get install -y \
    libegl-dev \
    libgl1-mesa-glx \
    libglm-dev

pip install vastai flask fastapi pyyaml \
    && git clone https://github.com/dreamgaussian/dreamgaussian \
    && cd dreamgaussian \
    && pip install -r ./requirements.txt \
    && git clone --recursive https://github.com/ashawkey/diff-gaussian-rasterization \
    && pip install ./diff-gaussian-rasterization \
    && pip install ./simple-knn \
    && pip install git+https://github.com/NVlabs/nvdiffrast/ \
    && pip install git+https://github.com/ashawkey/kiuikit \
    && rm -rf /root/.cache/pip