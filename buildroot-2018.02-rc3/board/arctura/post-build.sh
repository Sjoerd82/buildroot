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
#if [ -e ${TARGET_DIR}/etc/init.d/S95mpd ]; then
#    #echo "test" > ${TARGET_DIR}/etc/test.txt
#    mv ${TARGET_DIR}/etc/init.d/S95mpd ${TARGET_DIR}/etc/init.d/S52mpd
#fi

# DHCPCD
if [ -e ${TARGET_DIR}/etc/init.d/S41dhcpcd ]; then
   mv ${TARGET_DIR}/etc/init.d/S41dhcpcd ${TARGET_DIR}/etc/init.d/wlan-wpa
fi

# DNSMasq
if [ -e ${TARGET_DIR}/etc/init.d/S80dnsmasq ]; then
   mv ${TARGET_DIR}/etc/init.d/S80dnsmasq ${TARGET_DIR}/etc/init.d/wlan-ap
fi

# QUICKPLAY
if [ -e ${TARGET_DIR}/etc/init.d/S91smb ]; then
   mv ${TARGET_DIR}/etc/init.d/S91smb ${TARGET_DIR}/etc/init.d/quickplay
fi

if [ -e ${TARGET_DIR}/etc/init.d/S95mpd ]; then
   mv ${TARGET_DIR}/etc/init.d/S95mpd ${TARGET_DIR}/etc/init.d/quickplay
fi

# PULSEAUDIO
chmod -x ${TARGET_DIR}/etc/init.d/S??pulseaudio

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


