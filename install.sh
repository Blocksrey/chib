#!/bin/sh

#Ah shit, here we go again...
echo "The Archy installation has started." &&

#Dewit
sudo pacman -S\ #
p7zip\
noto-fonts-cjk\
noto-fonts-emoji\
alacritty\
ntfs-3g\
gvfs\
nnn\
lxdm\
rofi\
alsa-utils\
nvidia\
firefox\
i3status\
i3 &&


systemctl enable lxdm &&

echo "The Archy installation has finished." &&

echo "Rebooting..." &&

reboot
