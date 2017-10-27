#!/bin/sh

set -u
set -e

# Add a console on tty1
if [ -e ${TARGET_DIR}/etc/inittab ]; then
    grep -qE '^tty1::' ${TARGET_DIR}/etc/inittab || \
	sed -i '/GENERIC_SERIAL/a\
tty1::respawn:/sbin/getty -L  tty1 0 vt100 # HDMI console' ${TARGET_DIR}/etc/inittab
fi

# Remove ttyAMA0 from cmdline

# Reorder init scripts
if [ -e ${TARGET_DIR}/etc/S95mpd ]; then
    mv ${TARGET_DIR}/etc/S95mpd ${TARGET_DIR}/etc/S51mpd
fi

# Add SMB user
