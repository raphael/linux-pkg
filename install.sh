#!/bin/bash

if [ $# -eq 0 ]
then
  echo 'Usage: install.sh <PACKAGE>'
  echo E.g.: 'install.sh linux-4.1rc3'
  exit 1
fi
sudo pacman -R --noconfirm $1
sudo pacman -R --noconfirm $1-docs
sudo pacman -R --noconfirm $1-headers
sudo pacman -U --noconfirm $1*

sudo sh -c 'grub-mkconfig > /boot/grub/grub.cfg'
sudo grub-install /dev/sda
