#!/bin/ash
set -e
./configure --prefix=/usr --disable-dependency-tracking
./build.sh
./make -j `nproc`
./make -j `nproc` install
