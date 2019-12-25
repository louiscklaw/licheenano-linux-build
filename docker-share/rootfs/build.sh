#!/usr/bin/env sh

cd docker-share/rootfs

rm -rf buildroot-*

wget https://buildroot.org/downloads/buildroot-2017.08.tar.gz
tar xvf buildroot-2017.08.tar.gz

cp .config buildroot-2017.08/.config

cd buildroot-2017.08/
make -j2
cd ..

cd ../..