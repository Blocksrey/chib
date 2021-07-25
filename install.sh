#!/bin/sh

echo "The Archy installation has started." &&

sudo pacman -S \
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
i3 &&

systemctl enable lxdm &&

echo "The Archy installation has finished." &&

echo "Rebooting..." &&

reboot
