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
	wayland
	xorg-server-xwayland
	libxcb
	linux-headers

	# Xorg
	xauth
	xorg-server
	xorg-video-drivers
	xorg-input-drivers
	xorg-apps

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
	nautilus

	# Window manager
	gnome
	i3
	i3status

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

# EGL Wayland
bash egl-wayland-install.sh &&


# Sazanami font
echo "Installing sazanami fonts..." &&
mkdir /usr/share/fonts/TTF &&
7z x sazanami-20040629.tar.bz2 &&
7z x sazanami-20040629.tar &&
cp sazanami-20040629/*.ttf /usr/share/fonts/TTF/ &&


# Services
echo "Enabling services..." &&
ln -s /etc/sv/dbus /var/service/ &&
ln -s /etc/sv/sddm /var/service/ &&


# Nvidia
mkdir /etc/modprob.d &&
echo "blacklist nouveau" > /etc/modprob.d/blacklist.conf &&

# Change modeset
echo "Enabling Nvidia modeset..." &&
sed -i 's/loglevel=4/loglevel=4 rd.driver.blacklist=nouveau nvidia-drm.modeset=1/g' /etc/default/grub &&
grub-mkconfig -o /boot/grub/grub.cfg &&

# Update GDM rules
sed -i "s/DRIVER/#DRIVER/g" /usr/lib/udev/rules.d/61-gdm.rules &&

# Generate new initramfs image
dracut -q /boot/initramfs-$(uname -r).img $(uname -r) --force &&

# Enable kms-modifiers
gsettings set org.gnome.mutter experimental-features [\"kms-modifiers\"] &&


# i3
# echo "Configuring i3..." &&
# cd /home/* &&
# printf "\nbindsym $mod+o rofi -show drun" >> .config/i3/config &&


# Reboot
echo "Rebooting..." &&
reboot ||


# Fail
echo "Installation failed, glhf."
