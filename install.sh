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
	sublime-text3
	sublime-merge
  
	# File management
	p7zip
	nnn

	# Terminal emulation
	alacritty

	# Language
	font-hanazono
	fcitx
	fcitx-mozc

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
	
	cd /home/* &&
	echo "bindsym \$mod+o exec rofi -show drun" >> .config/i3/config &&
	echo "exec i3" > .xinitrc &&
	echo "Voidy configuration has completed, a reboot will be initiated." &&
	reboot
else
	echo "Voidy installation has failed, glhf."
fi
