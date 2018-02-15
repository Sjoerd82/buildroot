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
if [ -e ${TARGET_DIR}/etc/init.d/S95mpd ]; then
    echo "test" > ${TARGET_DIR}/etc/test.txt
    mv ${TARGET_DIR}/etc/init.d/S95mpd ${TARGET_DIR}/etc/init.d/S52mpd
fi

# Create app.ext4
#/home/buildroot/buildroot/board/arctura/create-pihu-app-img.sh

# S01logging
# S02firstboot
# S03modules
# S10udev
# S20urandom

# S30dbus
# S31dbus-remote

# S40network            <- S40network (provide lo interface)
# S41bluetooth          <- S41

# S50udisks-glue        <- S60udisk-glue
# S51pulseaudio         <- S50pulseaudio
# S52mpd                <- S95mpd
# S59headunit

# S60wlan
# S70dropbear
# S71smb

# Add SMB user

# THE FOLLOWING WORKS, but we now use the system.conf in the overlay..
# Allow DBUS service
# ToDo: maybe use XMLstarlet or something more stable....
#if [ -e ${TARGET_DIR}/share/dbus-1/system.conf ]; then
#  sed -i '52i\    <allow own=\"com.arctura.remote\"/>' ${TARGET_DIR}/share/system.conf
#fi
