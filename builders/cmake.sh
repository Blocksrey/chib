#!/usr/bin/bash
set -e
./bootstrap --prefix=/usr -- -DCMAKE_USE_OPENSSL=OFF
make -j `nproc`
make -j `nproc` install
