#!/bin/sh

IMG="app.ext4"
LBL="PIHU_APP"
MNT="/mnt/PIHU_APP"

rm -rf defender-headunit
git clone git://github.com/Sjoerd82/defender-headunit
mv defender-headunit/.git defender-headunit/git

#32MB:
#dd if=/dev/zero of=$IMG bs=4096 count=8192

#64MB:
dd if=/dev/zero of=$IMG bs=4096 count=16384

mkfs.ext4 $IMG
e2label $IMG $LBL

mkdir -p $MNT
mount -o loop $IMG $MNT
cp -r defender-headunit $MNT
sync
umount $MNT

