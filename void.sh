##################################################
# Voidy, by Jeffrey Skinner.                     #
# Voidy is personalized specifically for myself, #
# however feel free to use it as you'd like.     #
##################################################

# Package list
packages=(
	# Development
	git

	# Compilers and interpreters
	make
	cmake
	gcc
	LuaJIT

	# Libraries
	SDL2-devel
	SDL2_image-devel
	SDL2_ttf-devel

	# File management
	p7zip

	# Drivers
	nvidia
	alsa-utils
	dbus
	xorg

	# Web browser
	firefox

	# Display manager
	sddm

	# Terminal
	alacritty

	# Launcher
	rofi

	# File
	ntfs-3g
	nnn
	nautilis

	# Window manager
	i3status
	i3

	# Media
	mpv
	youtube-dl
	ffmpeg

	# Huh
	qbittorrent
	audacity
	gimp
)

# Packages
echo "Installing packages..." &&
xbps-install -Suy void-repo-nonfree &&
xbps-install -Suy ${packages[@]} &&

# Sazanami font
echo "Installing sazanami fonts..." &&
7z x sazanami-20040629.tar.bz2 &&
7z x sazanami-20040629.tar &&
cp sazanami-20040629/*.ttf /usr/share/fonts/TTF/

# Services
echo "Enabling services..." &&
ln -s /etc/sv/dbus /var/service/ &&
ln -s /etc/sv/sddm /var/service/ &&

# Nvidia
echo "Enabling Nvidia modeset..." &&
sed -i 's/loglevel=4/loglevel=4 nvidia-drm.modeset=1/g' /etc/default/grub &&
grub-mkconfig -o /boot/grub/grub.cfg &&

# Clean
rm -r ../inity.sh &&

# i3
echo "Configuring i3..."
cd /home/* &&
printf "\nbindsym $mod+o rofi -show drun" >> .config/i3/config &&

# Reboot
echo "Rebooting..." &&
reboot ||

# Fail
echo "Installation failed, glhf."