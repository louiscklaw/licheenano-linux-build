#!/usr/bin/env sh

# http://nano.lichee.pro/build_sys/kernel.html

# docker run -d -v $PWD/docker-share:/docker-share -p 6666:22 zepan/licheepi /usr/sbin/sshd -D

# build uboot
# docker run  --rm -t -v $PWD/docker-share:/docker-share zepan/licheepi sh docker-share/boot/build.sh

# build zImage
# docker run --rm -t -v $PWD/docker-share:/docker-share zepan/licheepi sh docker-share/zImage/build.sh
# docker run --rm -it -v $PWD/docker-share:/docker-share zepan/licheepi /bin/bash

# build rootfs
docker run --rm -t -v $PWD/docker-share:/docker-share zepan/licheepi sh docker-share/rootfs/build.sh
