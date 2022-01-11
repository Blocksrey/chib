#!/usr/bin/bash
set -e
./configure --prefix=/usr --with-internal-glib
make -j `nproc`
make -j `nproc` install
