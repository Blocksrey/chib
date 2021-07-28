##################################################
# Voidy, by Jeffrey Skinner.                     #
# Voidy is personalized specifically for myself, #
# however feel free to use it as you'd like.     #
##################################################

# Package list
packages=(
	# Development
	git
	make
	cmake
	gcc
	LuaJIT
	SDL2-devel
	SDL2_image-devel
	SDL2_ttf-devel
  
	# File management
	p7zip
	nnn

	# Terminal emulation
	alacritty

	# Language
	font-hanazono

	# Application launcher
	rofi

	# Drivers
	nvidia
	wayland
	xorg-server-xwayland
	alsa-utils

	# Web browsing
	firefox

	# Window manager
	gnome

	# Media
	mpv
	youtube-dl
	ffmpeg
	
	# Huh
	qbittorrent
	gimp
)

# Ah shit, here we go again...
echo "Package installation will begin." &&

# Package installation
xbps-install -y -S void-repo-nonfree && sleep 1 &&
xbps-install -y ${packages[@]} &&

echo "Packages have been successfully installed." &&

# Configuration stage
echo "Configuration will now begin." &&

# Nvidia configuration
sed -i 's/loglevel=4/loglevel=4 nvidia-drm.modeset=1/g' /etc/default/grub &&
grub-mkconfig -o /boot/grub/grub.cfg &&

# cd /home/* &&
echo "Voidy configuration has completed, a reboot will be initiated." &&

reboot ||

# Failure
echo "Voidy installation has failed, glhf."
