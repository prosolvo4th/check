#!/bin/bash -x
ARCH=arm \
CC=arm-linux-gnueabi-gcc autoreconf --install

ARCH=arm \
CC=arm-linux-gnueabi-gcc ./configure \
--host=arm-linux-gnueabi \
--prefix="$CHECK_OUT_PATH" \
--enable-static=yes
make
sudo make install
