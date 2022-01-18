#!/bin/ash
set -e
meson build\
	--prefix=/usr\
	-Dgraphite2=enabled
ninja -C build -j `nproc`
ninja -C build -j `nproc` install
