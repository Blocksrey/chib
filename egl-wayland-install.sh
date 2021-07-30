# Other prerequisites
xbps-install -Sy curl git wayland-devel wayland-protocols meson ninja pkg-config libtool gettext &&

# EGL headers
mkdir /usr/include/EGL /usr/include/KHR
curl -s https://www.khronos.org/registry/EGL/api/EGL/egl.h --output /usr/include/EGL/egl.h &&
curl -s https://www.khronos.org/registry/EGL/api/EGL/eglext.h --output /usr/include/EGL/eglext.h &&
curl -s https://www.khronos.org/registry/EGL/api/EGL/eglplatform.h --output /usr/include/EGL/eglplatform.h &&
curl -s https://www.khronos.org/registry/EGL/api/KHR/khrplatform.h --output /usr/include/KHR/khrplatform.h &&

# EGL External Platform installation
git clone https://github.com/NVIDIA/eglexternalplatform.git &&
cp eglexternalplatform/interface/* /usr/include &&
cp eglexternalplatform/eglexternalplatform.pc /usr/share/pkgconfig &&
rm -r eglexternalplatform &&

git clone https://github.com/NVIDIA/egl-wayland.git &&

cd egl-wayland &&

mkdir build &&
meson build &&
cd build &&
ninja &&
ninja install &&

echo "egl-wayland sucessfully installed." ||
echo "egl-wayland failed to install."
