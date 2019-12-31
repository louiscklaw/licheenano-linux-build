#!/usr/bin/env sh
# assume running on root directory

echo 'building zImage...'

apt-get update
apt-get install -y libssl-dev gcc-arm*


cd docker-share/zImage

rm -rf linux

git clone --depth=5 -b f1c100s-480272lcd-test https://github.com/Icenowy/linux.git

cp .config linux/.config

cd linux

# if this fail, check with menuconfig
# make ARCH=arm menuconfig

make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- -j3
# linux
cd ..

# docker-share/zImage
cd ../..

# check artifact
echo 'checking artifact'
ls -l docker-share/zImage/linux/arch/arm/boot/zImage

echo 'build zImage done.'