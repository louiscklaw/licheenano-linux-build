#!/usr/bin/env sh
# assume running on root directory

echo 'building zImage...'

cd docker-share/zImage

rm -rf linux

git clone --depth=1 -b f1c100s-480272lcd-test https://github.com/Icenowy/linux.git

cp .config linux/.config

cd linux

# if this fail, check with menuconfig
# make ARCH=arm menuconfig

make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- -j24

cd ..


cd ../..

echo 'build zImage done.'