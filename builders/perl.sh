#!/bin/ash
set -e
./Configure -des
make -j `nproc`
make -j `nproc` install
