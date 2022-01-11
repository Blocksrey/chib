#!/usr/bin/bash
set -e
./config\
	--prefix=/usr\
	--openssldir=/etc/ssl\
	--libdir=lib
make -j `nproc`
make -j `nproc` install_sw
