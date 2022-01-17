#!/bin/bash
set -e
#xbps-install -y git obs-devel
meson build --prefix=/usr
ninja -C build -j `nproc`
ninja -C build -j `nproc` install
