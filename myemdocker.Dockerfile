FROM ubuntu:22.04

# Prevent interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update system and install base dependencies identified from myemdocker
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc-multilib \
    g++ \
    qemu-system-x86 \
    qemu-utils \
    python3 \
    python-is-python3 \
    cpio \
    unzip \
    patch \
    curl \
    texinfo \
    bison \
    flex \
    cmake \
    sudo \
    git \
    wget \
    libncurses-dev \
    libmpc-dev \
    libgmp-dev \
    libmpfr-dev \
    # Cross-compilers for Embox
    gcc-arm-none-eabi \
    gdb-multiarch \
    # Networking for QEMU
    iptables \
    bridge-utils \
    telnet \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /embox

# Set default command
CMD ["/bin/bash"]
