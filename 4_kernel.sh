#!/bin/bash

MAKEOPTS="-j7" emerge --ask sys-kernel/linux-firmware
MAKEOPTS="-j7" emerge --ask --noreplace sys-firmware/intel-microcode
