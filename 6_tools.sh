#!/bin/bash

MAKEOPTS="-j7" emerge --ask app-admin/sysklogd
rc-update add sysklogd default

MAKEOPTS="-j7" emerge --ask sys-apps/mlocate

MAKEOPTS="-j7" emerge -av sys-fs/e2fsprogs
MAKEOPTS="-j7" emerge -av sys-fs/dosfstools

MAKEOPTS="-j7" emerge --ask net-misc/dhcpcd

MAKEOPTS="-j7" emerge --ask net-wireless/iw net-wireless/wpa_supplicant



