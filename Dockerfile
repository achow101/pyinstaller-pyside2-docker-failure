FROM debian:stretch-slim

SHELL ["/bin/bash", "-c"]

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y \
    apt-transport-https \
    git \
    make \
    build-essential \
    libssl-dev \
    zlib1g-dev \
    libbz2-dev \
    libglib2.0-0 \
    libreadline-dev \
    libsqlite3-dev \
    wget \
    curl \
    llvm \
    libncurses5-dev \
    xz-utils \
    libxml2-dev \
    libxmlsec1-dev \
    libffi-dev \
    liblzma-dev \
    libusb-1.0-0-dev \
    libudev-dev \
    libpng-dev \
    faketime \
    zip \
    dos2unix \
    g++-mingw-w64-x86-64

RUN curl https://pyenv.run | bash
ENV PYENV_ROOT="/root/.pyenv"
ENV PATH="$PYENV_ROOT/bin:$PATH"

env PYTHON_CONFIGURE_OPTS="--enable-shared"
RUN eval "$(pyenv init --path)" && eval "$(pyenv virtualenv-init -)" && pyenv install 3.6.12

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
ENV LANGUAGE=C.UTF-8
