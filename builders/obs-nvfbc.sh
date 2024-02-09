#xbps-install -y obs-devel pkg-config
meson build --prefix=/usr
ninja -C build
ninja -C build install