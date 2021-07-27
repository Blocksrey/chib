##################################################
# Voidy, by Jeffrey Skinner.                     #
# Voidy is personalized specifically for myself, #
# however feel free to use it as you'd like.     #
##################################################

# Package list
packages=(
	# Development
	git
	cmake
	make
	gcc
	SDL2-devel
	SDL2_image-devel
	SDL2_ttf-devel
  
	# File management
	p7zip
	nnn

	# Terminal emulation
	alacritty

	# Fonts
	noto-fonts-cjk
	noto-fonts-emoji

	# Application launcher
	rofi

	# Drivers
	alsa-utils

	# Web browsing
	firefox

	# Window manager
	i3status
	i3

	# Video player
	mpv
	
	# Huh
	qbittorrent
)

# Ah shit, here we go again...

installed=false

xbps-install ${packages[@]} &&
installed=true

if $installed
then
	echo "Packages have been successfully installed, configuration will begin."
  
	echo "bindsym \$mod+o exec rofi -show drun" >> ~/.config/i3/config &&
	echo "Voidy configuration has completed, a reboot will be initiated." &&
	reboot
else
	echo "Voidy installation has failed, glhf."
fi
