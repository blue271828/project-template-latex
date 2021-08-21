# See here for image contents:
# https://hub.docker.com/repository/docker/blue271828/sharelatex-full
FROM blue271828/sharelatex-full

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID
RUN bash -c "$(curl -fsSL "https://raw.githubusercontent.com/microsoft/vscode-dev-containers/main/script-library/common-debian.sh")" \
    && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# ** [Optional] Uncomment this section to install additional packages. **
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>
