#!/bin/bash

cd $(dirname "$0") &&

echo "Installing sazanami fonts..." &&

mkdir -p /usr/share/fonts/TTF &&
tar -xf sazanami-20040629.tar.bz2 &&
cp -f sazanami-20040629/*.ttf /usr/share/fonts/TTF &&
rm -r sazanami-20040629 &&

echo "Fonts installed" ||
echo "Fonts failed :L"