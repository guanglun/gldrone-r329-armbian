#!/bin/bash

# ./compile.sh \
# BOARD=maixsense \
# KERNEL_ONLY=no \
# RELEASE=focal \
# BUILD_MINIMAL=yes \
# EXPERT=yes \
# KERNEL_CONFIGURE=no

./compile.sh  BOARD=maixsense BRANCH=edge RELEASE=focal CLEAN_LEVEL= BUILD_KSRC=no BUILD_MINIMAL=yes BUILD_DESKTOP=no KERNEL_ONLY=yes KERNEL_CONFIGURE=no COMPRESS_OUTPUTIMAGE=sha,gpg,img
# sudo dd bs=1M if=output/images/Armbian_21.08.0-trunk_Maixsense_focal_edge_5.14.0_minimal.img of=/dev/sdb