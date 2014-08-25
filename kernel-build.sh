#!/bin/bash
#
#  Calo Geyer
#

clear

echo ""
echo ""
echo "Start kernel build"
echo ""
echo ""

make clean
make mrproper
export ARCH=arm
export CROSS_COMPILE=arm-eabi-
make mako_defconfig
time make -j8 2>&1 | tee kernel.log

echo ""
echo ""
echo "Kernel build done"
echo ""
echo ""
