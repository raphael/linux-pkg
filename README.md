# ArchLinux Kernel Builder

This project provides a simple(istic) tool for compiling custom ArchLinux kernel packages and
installing them.

Example usage:
```bash
mkdir -p src
cd src
git clone https://github.com/torvalds/linux linux-4.1-rc3
cd linux-4.1-rc3
git checkout v4.1-rc3
cd ../..
install 4.1-rc3
```
*Note*: This package assumes that grub is being used and that it's setup on `/dev/sda`, update
`install` if your setup differs.

The `install` script can be run multiple times. It builds the package incrementally and replaces
the kernel image used by grub with the latest one each time. This makes it convenient to try out
various config options.
