##################################################
# Archy, by Jeffrey Skinner.                     #
# Archy is personalized specifically for myself, #
# however feel free to use it as you'd like.     #
##################################################

# Package list
packages=(
	# Development
	git
	make
	cmake
	gcc
	luajit
	sdl2
	sdl2_image
	sdl2_ttf

	# File management
	p7zip

	# Drivers
	nvidia
	alsa-utils
	wayland
	xorg-xwayland
	egl-wayland
	dbus

	# Terminal emulator
	alacritty

	# Web browser
	firefox

	# Display manager
	sddm

	# Window manager
	gnome

	# Fonts
	# noto-fonts-cjk
	# noto-fonts-emoji

	# Media
	# mpv
	# youtube-dl
	# ffmpeg

	# Huh
	# qbittorrent
	# gimp
)

# Ah shit, here we go again...
echo "Package installation will begin." &&

# Package installation
pacman -S ${packages[@]} &&

echo "Packages have been successfully installed." &&

# Configuration stage
echo "Configuration will now begin." &&

# Services
echo "Enabling services..." &&
systemctl enable dbus &&
systemctl enable sddm &&

# Nvidia configuration
#sed -i 's/loglevel=4/loglevel=4 nvidia-drm.modeset=1/g' /etc/default/grub &&

echo "Archy configuration has completed, a reboot will be initiated." &&

reboot ||

# Failure
echo "Archy installation has failed, glhf."
