#!/bin/bash

source /etc/profile
export PS1="(chroot) ${PS1}"

MAKEOPTS="-j7" emerge-webrsync

MAKEOPTS="-j7" emerge --sync

MAKEOPTS="-j7" emerge --ask --verbose --update --deep --newuse @world

