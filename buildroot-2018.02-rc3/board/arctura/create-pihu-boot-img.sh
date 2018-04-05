#!/bin/sh

IMG="boot.vfat"
LBL="PIHU_BOOT"
MNT="/mnt/PIHU_BOOT"

dd if=/dev/zero of=$IMG bs=4096 count=8192
mkfs.vfat -n $LBL $IMG
#tune2fs -c0 -i0 app.ext4
mkdir -p ${MNT}
mount -o loop $IMG $MNT
mkdir -p ${MNT}/overlays
cp /home/buildroot/buildroot/output/images/bcm2708-rpi-b-plus.dtb $MNT
cp /home/buildroot/buildroot/output/images/bcm2708-rpi-0-w.dtb $MNT
cp /home/buildroot/buildroot/output/images/rpi-firmware/bootcode.bin $MNT
cp /home/buildroot/buildroot/output/images/rpi-firmware/cmdline.txt $MNT
cp /home/buildroot/buildroot/output/images/rpi-firmware/config.txt $MNT
cp /home/buildroot/buildroot/output/images/rpi-firmware/fixup.dat $MNT
cp /home/buildroot/buildroot/output/images/rpi-firmware/start.elf $MNT
cp /home/buildroot/buildroot/output/images/zImage $MNT
cp /home/buildroot/buildroot/output/images/rpi-firmware/overlays/hifiberry-dac.dtbo /mnt/PIHU_BOOT/overlays

# Disable consoleblanking
sed ' 1 s/.*/& consoleblank=0/' /home/buildroot/buildroot/output/images/rpi-firmware/cmdline.txt

sync
umount $MNT

