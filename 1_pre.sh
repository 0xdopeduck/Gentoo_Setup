#!/bin/bash

#Configure Repos
mkdir --parents /mnt/gentoo/etc/portage/repos.conf
cp /mnt/gentoo/usr/share/portage/config/repos.conf /mnt/gentoo/etc/portage/repos.conf/gentoo.conf

#Enable Net
cp --dereference /etc/resolv.conf /mnt/gentoo/etc/

#Mounting necessary file systems
mount --types proc /proc /mnt/gentoo/proc
mount --rbind /sys /mnt/gentoo/sys
mount --make-rslave /mnt/gentoo/sys
mount --rbind /dev /mnt/gentoo/dev
mount --make-rslave /mnt/gentoo/dev

mount /dev/sda1 /boot
chroot /mnt/gentoo /bin/bash
