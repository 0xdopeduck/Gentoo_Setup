#!/bin/bash
MAKEOPTS="-j7" emerge --ask sys-boot/grub:2

grub-install --target=x86_64-efi --efi-directory=/boot

grub-mkconfig -o /boot/grub/grub.cfg
