#!/bin/bash
set -e
xbps-install -y ninja
meson build --prefix=/usr
ninja -C build -j `nproc`
ninja -C build -j `nproc` install
