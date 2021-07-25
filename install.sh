#!/bin/sh

echo "The Archy installation has started." ;

sudo pacman -R \
gvfs \
ntfs-3g \
thunar \
alacritty \
lxdm \
noto-fonts-cjk \
noto-fonts-emoji \
chromium \
rofi \
alsa-utils \
i3 \
i3status \
nvidia ;

systemctl disable lxdm ;

echo "The Archy installtion has finished."
