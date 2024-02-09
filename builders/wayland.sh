meson build --prefix=/usr --buildtype=release -Ddocumentation=false
ninja -C build
ninja -C build install