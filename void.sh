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
	alsa-utils
	xorg

	# Web browsing
	firefox

	# Window manager
	i3status
	i3

	# Media
	mpv
	youtube-dl
	ffmpeg
	
	# Huh
	qbittorrent
	gimp
)

# Ah shit, here we go again...

installed=false

xbps-install ${packages[@]} &&
installed=true

if $installed
then
	echo "Packages have been successfully installed, configuration will begin."
	
	startx
	
	cd /home/* &&
	echo "exec i3" > .xinitrc &&
	echo "bindsym \$mod+o exec rofi -show drun" >> .config/i3/config &&
	echo "Voidy configuration has completed, a reboot will be initiated." &&
	reboot
	
	echo "Voidy configuration failed! Please try again."
else
	echo "Voidy installation has failed, glhf."
fi
