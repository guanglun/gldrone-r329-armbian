#!/bin/bash

KERNEL_PATH=/home/guanglun/workspace/r329/armbian-build/cache/sources/linux-mainline/r329-wip-integrated
CROSS_COMPILE_PATH=/home/guanglun/workspace/r329/armbian-build/cache/toolchain/gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu/bin

#cp config/kernel/linux-sun50iw11-edge.config $KERNEL_PATH/.config
#cd $KERNEL_PATH && make ARCH=arm64 CROSS_COMPILE=$CROSS_COMPILE_PATH/aarch64-linux-gnu- clean
#cd $KERNEL_PATH && make ARCH=arm64 CROSS_COMPILE=$CROSS_COMPILE_PATH/aarch64-linux-gnu- -j12
cd $KERNEL_PATH && make -j18 KDEB_PKGVERSION=21.08.0-trunk BRANCH=edge LOCALVERSION=-sun50iw11 KBUILD_DEBARCH=arm64 ARCH=arm64 CROSS_COMPILE=$CROSS_COMPILE_PATH/aarch64-linux-gnu-
#cd $KERNEL_PATH && make ARCH=arm64 CROSS_COMPILE=$CROSS_COMPILE_PATH/aarch64-linux-gnu- menuconfig