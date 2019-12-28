#!/usr/bin/env sh
# assume running on root directory

echo 'building boot...'

cd docker-share/boot
rm -rf boot.scr

mkimage -C none -A arm -T script -d boot.cmd boot.scr

# docker-share/boot
cd ../..

echo 'checking artifact'
ls -l docker-share/boot/boot.scr

echo 'build root done.'