#!/usr/bin/bash
set -e
meson build\
	--prefix=/usr\
	-Dgraphite2=enabled
ninja -j `nproc` -C build
ninja -j `nproc` -C build install
