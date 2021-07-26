#!/bin/sh

##################################################
# Archy, by Jeffrey Skinner.                     #
# Archy is personalized specifically for myself, #
# however feel free to use it as you'd like.     #
##################################################

# Package list
packages=(
	# Development
	git
	cmake

	# File management
	p7zip
	nnn
	ntfs-3g

	# Terminal emulation
	alacritty

	# Fonts
	noto-fonts-cjk
	noto-fonts-emoji

	# Display manager
	lxdm

	# Application launcher
	rofi

	# Drivers
	alsa-utils
	nvidia

	# Web browsing
	firefox

	# Window manager
	i3status
	i3-wm

	# Video player
	mpv
)

# Ah shit, here we go again...

installed=false

pacman -S ${packages[@]} &&
installed=true

if $installed
then
	echo "Packages have been successfully installed, configuration will begin."

	systemctl enable lxdm &&
	echo "bindsym \$mod+o exec rofi -show drun" >> ~/.config/i3/config &&
	echo "Archy installation has succeeded, a reboot will be initiated." &&
	reboot
else
	echo "Archy installation has failed, glhf."
fi
