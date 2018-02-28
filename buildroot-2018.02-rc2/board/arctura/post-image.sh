#!/bin/sh

BOARD_DIR="$(dirname $0)"
BOARD_NAME="$(basename ${BOARD_DIR})"
GENIMAGE_CFG="${BOARD_DIR}/genimage-${BOARD_NAME}.cfg"
GENIMAGE_TMP="${BUILD_DIR}/genimage.tmp"

# Custom images
yes | cp ${BOARD_DIR}/app.ext4 ${BINARIES_DIR}
yes | cp ${BOARD_DIR}/boot.vfat ${BINARIES_DIR}

# Disable consoleblanking
sed ' 1 s/.*/& consoleblank=0/' ${BINARIES_DIR}/rpi-firmware/cmdline.txt

#TODO: only once!
CFG_TAIL="$(tail -n1 ${BINARIES_DIR}/rpi-firmware/config.txt)"
if [ $CFG_TAIL != "#PIHU" ]; then
cat << __EOF__ >> "${BINARIES_DIR}/rpi-firmware/config.txt"
dtparam=i2c1=on
dtparam=i2c_arm=on
dtparam=spi=on
dtoverlay=hifiberry-dac
#dtparam=audio=on
#PIHU
__EOF__
fi

rm -rf "${GENIMAGE_TMP}"

genimage                           \
	--rootpath "${TARGET_DIR}"     \
	--tmppath "${GENIMAGE_TMP}"    \
	--inputpath "${BINARIES_DIR}"  \
	--outputpath "${BINARIES_DIR}" \
	--config "${GENIMAGE_CFG}"

exit $?
