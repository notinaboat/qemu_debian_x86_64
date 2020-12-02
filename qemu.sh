qemu-system-x86_64                                                             \
    -machine accel=hvf                                                         \
    -cpu     host                                                              \
    -smp     4                                                                 \
    -m       8G                                                                \
    -hda     debian.qcow2                                                      \
    -nic     hostfwd=tcp:127.0.0.1:4444-:22                                    \
    -no-reboot                                                                 \
    -nographic
