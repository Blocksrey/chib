cd $(dirname "$0") &&

xbps-install -yS git &&
git clone https://github.com/keylase/nvidia-patch.git &&

./nvidia-patch/patch-fbc.sh &&

rm -r nvidia-patch
