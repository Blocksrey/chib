#!/usr/bin/bash
set -e
#xbps-install -y git obs-devel
meson build
#cp nvfbc.so /usr/lib/obs-plugins
ninja -j `nproc` -C build
ninja -j `nproc` -C build install
