make clean
make -j$(nproc) KCONFIG_CONFIG=Microsoft/config-wsl
make modules_install headers_install

cp arch/x86_64/boot/bzImage /mnt/e/kernel/wsl/bzImage
