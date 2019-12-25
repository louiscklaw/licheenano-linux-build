#!/usr/bin/env sh
# assume running on root directory

cd docker-share/boot
rm -rf boot.scr

mkimage -C none -A arm -T script -d boot.cmd boot.scr

cd ../..