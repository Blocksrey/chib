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
	nodejs

	# Headers
	SDL2-devel
	SDL2_image-devel
	SDL2_ttf-devel

	# File management
	p7zip
	nnn
	nautilus
	gvfs

	# Drivers
	nvidia
	alsa-utils
	#dbus
	#linux-headers
	#libxcb
	libatomic

	# Compositors
	xauth
	xinit
	xorg-server
	xorg-input-drivers
	xorg-video-drivers
	#wayland
	#xorg-server-xwayland

	# Web browser
	firefox

	# Display manager
	#sddm

	# Terminal
	alacritty

	# Window manager
	i3
	i3status
	#gnome

	# Launcher
	rofi

	# Media
	mpv
	youtube-dl
	ffmpeg

	# Huh
	qbittorrent
	#audacity
	gimp
	rclone
	feh
	deadbeef
)


# Packages
echo "Installing packages..." &&

xbps-install -Syu \
void-repo-multilib \
void-repo-nonfree \
void-repo-multilib-nonfree &&

xbps-install -Sy ${packages[@]} &&


# Sazanami font
echo "Installing sazanami fonts..." &&
mkdir /usr/share/fonts/TTF &&
7z x sazanami-20040629.tar.bz2 &&
7z x sazanami-20040629.tar &&
cp sazanami-20040629/*.ttf /usr/share/fonts/TTF/ &&


# Services
#echo "Enabling services..." &&
#ln -s /etc/sv/dbus /var/service/ &&
#ln -s /etc/sv/sddm /var/service/ &&


# Install EGL Wayland
#bash egl-wayland-install.sh &&

# Blacklist Nouveau
#mkdir /etc/modprob.d &&
#echo "blacklist nouveau" > /etc/modprob.d/blacklist.conf &&

# Change modeset
#echo "Enabling Nvidia modeset..." &&
#sed -i 's/loglevel=4/loglevel=4 rd.driver.blacklist=nouveau nvidia-drm.modeset=1/g' /etc/default/grub &&
#grub-mkconfig -o /boot/grub/grub.cfg &&

# Update GDM rules
#sed -i "s/DRIVER/#DRIVER/g" /usr/lib/udev/rules.d/61-gdm.rules &&

# Generate new initramfs image
#dracut -q /boot/initramfs-$(uname -r).img $(uname -r) --force &&

# Enable kms-modifiers
#gsettings set org.gnome.mutter experimental-features [\"kms-modifiers\"] &&

# i3
echo "Configuring i3..." &&
cd /home/* &&
printf "exec i3" > .xinitrc &&
startx &&
printf "\nbindsym \$mod+o rofi -show drun" >> .config/i3/config &&


# Reboot
echo "Rebooting..." &&
reboot ||


# Fail
echo "Installation failed, glhf."
