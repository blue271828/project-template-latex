# See here for image contents:
# https://hub.docker.com/repository/docker/blue271828/sharelatex-full
FROM blue271828/sharelatex-full@sha256:d2e6c678b31fbbde8343f35d7b193edaa407063216dca9fc7c01bc127b195caf

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID
RUN bash -c "$(curl -fsSL "https://raw.githubusercontent.com/microsoft/vscode-dev-containers/main/script-library/common-debian.sh")" \
 && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# Install python3.9
ENV TZ=Asia/Tokyo
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
 && add-apt-repository -y ppa:deadsnakes/ppa \
 && apt-get -y install --no-install-recommends \
    python3.9 \
    python3.9-distutils \
 && apt-get clean -y && rm -rf /var/lib/apt/lists/* \
 && update-alternatives --install /usr/bin/python python /usr/bin/python3.9 1 \
 && curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py \
 && python get-pip.py \
 && rm -f get-pip.py

# Setup Jupyter environment
USER vscode
RUN pip install --no-cache-dir \
    jupyter
