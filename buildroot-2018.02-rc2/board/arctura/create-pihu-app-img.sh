#!/bin/sh

IMG="/home/buildroot/buildroot/board/arctura/app.ext4"
LBL="PIHU_APP"
MNT="/mnt/PIHU_APP"
APP="/home/buildroot/buildroot/board/arctura/PIHU_APP/defender-headunit"

rm $IMG

#32MB:
#dd if=/dev/zero of=$IMG bs=4096 count=8192

#64MB:
dd if=/dev/zero of=$IMG bs=4096 count=16384

mkfs.ext4 $IMG
e2label $IMG $LBL

mkdir -p $MNT
sudo mount -o loop $IMG $MNT
cp -r $APP $MNT
sync
sudo umount $MNT

