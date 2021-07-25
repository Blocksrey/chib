#!/bin/sh

echo "The Archy installation has started." &&

sudo pacman -S \
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
i3 status \
nvidia &&

systemctl enable lxdm &&

echo "The Archy installtion has finished."
