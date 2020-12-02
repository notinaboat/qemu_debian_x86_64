# Install Debian Buster for 64-bit Intel (amd64)
#
# https://gist.github.com/aserhat/91c1d5633d395d45dc8e5ab12c6b4767


BUSTER_URL=http://http.us.debian.org/debian/dists/buster/main/installer-amd64
KERNEL_URL=$(BUSTER_URL)/current/images/netboot/debian-installer/amd64/linux
INITRD_URL=$(BUSTER_URL)/current/images/netboot/debian-installer/amd64/initrd.gz


all: boot_system

boot/linux:
	curl -L $(KERNEL_URL) > $@

boot/initrd.gz:
	curl -L $(INITRD_URL) > $@

debian.qcow2:
	qemu-img create -f qcow2 $@ 10G

boot_installer: boot/linux boot/initrd.gz debian.qcow2
	bash qemu_installer.sh

boot_system:
	bash qemu.sh
