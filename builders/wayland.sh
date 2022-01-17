#!/bin/bash
set -e
meson build --prefix=/usr --buildtype=release -Ddocumentation=false
ninja -C build -j `nproc`
ninja -C build -j `nproc` install
