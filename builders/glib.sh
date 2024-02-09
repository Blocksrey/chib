#xbps-install -y ninja
meson build --prefix=/usr
ninja -C build
ninja -C build install