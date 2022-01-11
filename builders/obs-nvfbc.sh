#!/usr/bin/bash
set -e
#xbps-install -y git obs-devel
meson build --prefix=/usr
ninja -j `nproc` -C build
ninja -j `nproc` -C build install
