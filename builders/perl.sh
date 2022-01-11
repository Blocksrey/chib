#!/usr/bin/bash
set -e
./Configure -des
make -j `nproc`
make -j `nproc` install
