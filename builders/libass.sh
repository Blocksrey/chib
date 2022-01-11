#!/usr/bin/bash
set -e
./configure --prefix=/usr --disable-static
make -j `nproc`
make -j `nproc` install
