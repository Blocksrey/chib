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
	nodejs
	sdl2
	sdl2_image
	sdl2_ttf

	# File management
	p7zip

	# Drivers
	nvidia
	#alsa-utils
	#wayland
	#xorg-xwayland
	#egl-wayland
	#dbus

	# Terminal emulator
	alacritty

	# Web browser
	firefox

	# Display manager
	#sddm

	# Window manager
	gnome

	# Media
	mpv
	youtube-dl
	ffmpeg

	# Huh
	qbittorrent
	gimp
	
	NetworkManager
	rclone
	feh
	deadbeef
	audacity
)

# Ah shit, here we go again...
echo "Package installation will begin." &&
pacman -S ${packages[@]} &&

# Sazanami font
printf "\nInstalling sazanami fonts..." &&
mkdir /usr/share/fonts &&
mkdir /usr/share/fonts/TTF &&
7z x sazanami-20040629.tar.bz2 &&
7z x sazanami-20040629.tar &&
cp sazanami-20040629/*.ttf /usr/share/fonts/TTF/ &&

# Services
#echo "Enabling services..." &&
#systemctl enable dbus &&
#systemctl enable sddm &&
#systemctl enable NetworkManager &&

# Nvidia configuration
#sed -i 's/loglevel=4/loglevel=4 nvidia-drm.modeset=1/g' /etc/default/grub &&

sed -i "s/# set bell-style none/set bell-style none/g" /etc/inputrc &&

echo "Archy configuration has completed, a reboot will be initiated." &&

reboot ||

# Failure
echo "Archy installation has failed, glhf."
