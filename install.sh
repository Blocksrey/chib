#!/bin/sh

# Ah shit, here we go again...

echo "The Archy installation has started.";

# Dewit
sudo pacman -R \
noto-fonts-cjk \   # Fonts
noto-fonts-emoji \ # ^
alacritty \        # Terminal
ntfs-3g \          # File system
gvfs \             # ^
thunar \           # ^
lxdm \             # Display manager
rofi \             # Launcher
alsa-utils \       # Audio
nvidia \           # Graphics
chromium \         # Web browser
i3status \         # Window manager
i3 &&              # ^

# Enable lxdm service
systemctl disable lxdm;

echo "The Archy installtion has finished.";

echo "Please reboot for changes.";

# echo "Rebooting...";

# reboot;

# Sicko mode
