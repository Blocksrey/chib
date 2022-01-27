#!/bin/bash
set -e
xbps-install -y obs-devel pkg-config
meson build --prefix=/usr
ninja -C build -j `nproc`
ninja -C build -j `nproc` install
