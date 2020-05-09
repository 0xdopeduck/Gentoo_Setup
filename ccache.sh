#!/bin/bash

MAKEOPTS="-j7" emerge --ask dev-util/ccache

mkdir -p /var/cache/ccache
chown root:portage /var/cache/ccache
chmod 2775 /var/cache/ccache

echo "Please Set the config from the website"
