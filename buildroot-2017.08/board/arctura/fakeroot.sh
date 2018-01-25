#!/bin/sh

set -u
set -e

# Add root user to pulse-access group
if [ -e ${TARGET_DIR}/etc/group ]; then
    sed -i '/^pulse-access:/s/\(.*\)/\1,root/;s/:,/:/' ${TARGET_DIR}/etc/group
fi

# Add root and pulse user to lp group (for bluetoothd+dbus)
if [ -e ${TARGET_DIR}/etc/group ]; then
    sed -i '/^lp:/s/\(.*\)/\1,root/;s/:,/:/' ${TARGET_DIR}/etc/group
    sed -i '/^lp:/s/\(.*\)/\1,pulse/;s/:,/:/' ${TARGET_DIR}/etc/group
fi


