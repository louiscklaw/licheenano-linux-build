#!/usr/bin/env sh
# assume running on root directory

cd docker-share/zImage

rm -rf linux

git clone --depth=1 -b f1c100s-480272lcd-test https://github.com/Icenowy/linux.git

cp .config linux/.config

cd linux
make ARCH=arm
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- -j4
cd ..


cd ../..