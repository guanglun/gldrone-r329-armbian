#!/bin/bash

KERNEL_PATH=/home/guanglun/workspace/r329/armbian-build/cache/sources/linux-mainline/r329-wip-integrated

scp $KERNEL_PATH/arch/arm64/boot/Image root@r329:/boot/Image
#scp $KERNEL_PATH/arch/arm64/boot/dts/allwinner/sun50i-r329-maixsense.dtb root@r329:/boot/dtb