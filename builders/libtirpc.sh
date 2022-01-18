#!/bin/bash
set -e
./configure --prefix=/usr --disable-gssapi
make -j `nproc`
make -j `nproc` install
