#!/bin/bash
set -e
./configure --prefix=/usr --with-openssl
make -j `nproc`
make -j `nproc` install
