# qemu_debian_x86_64

Makefile to install Debian Buster for 64-bit Intel in a QEMU virtual machine.

To start the [Debian installer](https://www.debian.org/distrib/netinst) type:

```sh
% make boot_installer
```

To boot the installed system type:

```sh
% make boot_system
```

Based on:
https://gist.github.com/aserhat/91c1d5633d395d45dc8e5ab12c6b4767
