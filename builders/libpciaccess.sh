#!/bin/bash
set -e
./configure --prefix=/usr --enable-udev
make -j `nproc`
make -j `nproc` install
