#!/usr/bin/bash
set -e
./configure --prefix=/usr
./build.sh
./make install
