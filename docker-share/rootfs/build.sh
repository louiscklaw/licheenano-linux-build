#!/usr/bin/env sh

echo 'building rootfs'

cd docker-share/rootfs

  rm -rf buildroot-*

  wget https://buildroot.org/downloads/buildroot-2017.08.tar.gz
  tar xvf buildroot-2017.08.tar.gz

  cp .config buildroot-2017.08/.config

  cd buildroot-2017.08/
    make -j6
  cd ..

cd ../..

ls -l docker-share/rootfs/buildroot-2017.08/output/images
ls -l docker-share/rootfs/buildroot-2017.08/output/images/rootfs.tar

echo 'build rootfs done.'