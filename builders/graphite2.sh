#!/usr/bin/bash
set -e
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=/usr ..
make -j `nproc`
make -j `nproc` install
