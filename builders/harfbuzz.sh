meson build\
	--prefix=/usr\
	-Dgraphite2=enabled
ninja -C build
ninja -C build install