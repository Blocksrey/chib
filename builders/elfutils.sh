#!/bin/bash
set -e
./configure --prefix=/usr --disable-libdebuginfod --disable-debuginfod
make -j `nproc`
make -j `nproc` install
