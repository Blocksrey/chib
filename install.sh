#!/bin/sh

echo "The Archy installation has started.";

sudo pacman -R \
noto-fonts-cjk \
noto-fonts-emoji \
alacritty \
ntfs-3g \
gvfs \
thunar \
lxdm \
rofi \
alsa-utils \
nvidia \
chromium \
i3status \
i3 $$

systemctl disable lxdm;

echo "The Archy installtion has finished."
