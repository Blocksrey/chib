#!/bin/bash
set -e
#xbps-install -y zlib-devel
./configure --prefix=/usr
make -j `nproc`
make -j `nproc` install
