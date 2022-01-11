#!/usr/bin/bash
set -e
meson build --prefix=/usr
ninja -C build -j `nproc`
ninja -C build -j `nproc` install
