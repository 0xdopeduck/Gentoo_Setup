#!/bin/bash

echo "Asia/Kolkata" > /etc/timezone

emerge --config sys-libs/timezone-data

echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen

locale-gen

eselect locale list

readline loc

eselect locale set $loc

env-update && source /etc/profile && export PS1="(chroot) ${PS1}"
