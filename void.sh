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

	# File management
	p7zip

	# Drivers
	nvidia
	alsa-utils
	dbus

	# Web browser
	firefox

	# Display manager
	sddm

# Terminal
alacritty

	# Launcher
	rofi

	# Window manager
i3
	i3status

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

# Packages
echo "Installing packages..." &&
xbps-install -Suy void-repo-nonfree &&
xbps-install -Suy ${packages[@]} &&

# Services
echo "Enabling services..." &&
ln -s /etc/sv/dbus /var/service/ &&
ln -s /etc/sv/sddm /var/service/ &&

# Nvidia
# echo "Enabling Nvidia modeset..." &&
# sed -i 's/loglevel=4/loglevel=4 nvidia-drm.modeset=1/g' /etc/default/grub &&
# grub-mkconfig -o /boot/grub/grub.cfg &&

# Reboot
echo "Rebooting..." &&
reboot ||

# Fail
echo "Installation failed, glhf."
