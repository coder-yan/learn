#!/bin/bash

# install Docker on WSL2 without desktop docker
# https://dataedo.com/docs/installing-docker-on-windows-via-wsl

# 编译wsl的内核，参见config-wsl
# 编译内核：  make clean && make -j$(nproc) KCONFIG_CONFIG=Microsoft/config-wsl
# 安装内核：  make modules_install headers_install
# cp arch/x86_64/boot/bzImage /mnt/e/kernel/wsl/bzImage

# C:\Users\yanguodong\.wslconfig
# [wsl2]
# memory=8GB
# processors=8
# swap=8G
# nestedVirtualization=true
# kernel=E:\\kernel\\wsl\\bzImage

modprobe iptable-raw
modprobe iptable-nat
modprobe iptable-filter
modprobe iptable-mangle
modprobe xt_conntrack
modprobe xt_addrtype
modprobe xt_MASQUERADE
modprobe nf_nat
modprobe xt_nat

export DOCKER_HOST="unix:///mnt/wsl/shared-docker/docker.sock"


DOCKER_DIR=/mnt/wsl/shared-docker
mkdir -pm o=,ug=rwx "$DOCKER_DIR"
chgrp docker "$DOCKER_DIR"
