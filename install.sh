#!/bin/sh

# Ah shit, here we go again...

echo "The Archy installation has started.";

# Dewit
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

# Enable lxdm service
systemctl enable lxdm;

echo "The Archy installtion has finished.";

echo "Rebooting...";

reboot;
