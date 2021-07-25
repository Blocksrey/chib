#!/bin/sh

# Ah shit, here we go again...

echo "The Archy installation has started.";

# Dewit
sudo pacman -S \
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
systemctl enable lxdm;

echo "The Archy installtion has finished.";

echo "Please reboot to correct state.";

# echo "Rebooting...";

# reboot;

# Sicko mode
