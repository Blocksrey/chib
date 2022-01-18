#!/bin/ash
set -e
./configure --prefix=/usr
make -j `nproc`
make -j `nproc` install
