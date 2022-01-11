#!/usr/bin/bash
set -e
meson build --prefix=/usr
ninja -j `nproc` -C build
ninja -j `nproc` -C build install
