##################################################
# Voidy, by Jeffrey Skinner.                     #
# Voidy is personalized specifically for myself, #
# however feel free to use it as you'd like.     #
##################################################

# Package list
packages=(
	# build/compilers/interpreters/engines
	make
	cmake
	clang
	tcc
	LuaJIT
	nodejs
	love

	# headers/libraries
	SDL2-devel
	SDL2_image-devel
	SDL2_ttf-devel
	glfw-devel
	#libatomic

	# files
	p7zip
	#nnn
	nautilus
	rclone

	# drivers
	nvidia
	dbus

	# xorg
	xauth
	xinit
	xorg-server
	xorg-input-drivers
	xorg-video-drivers
	xrandr

	# terminal emulator
	#alacritty
	st

	# windows
	sddm
	#i3
	#i3status-rust
	#rofi
	dmenu
	bspwm
	sxhkd

	# video/audio utilities
	mpv
	yt-dlp
	aria2
	ffmpeg
	deadbeef
	feh
	alsa-utils

	# general utilities
	rtorrent
	#gimp
	connman
	lm_sensors
	qrencode
	git
	firefox

	# grapejuice
	#wine
	#winetricks
	#python3
	#python3-cairo-devel
	#gobject-introspection
	#xdg-user-dirs
	#xdg-utils
)

# Packages
echo "Installing packages..." &&
xbps-install -ySu void-repo-nonfree &&
xbps-install -ySu ${packages[@]} &&

# Sazanami font
echo "Installing sazanami fonts..." &&
mkdir -p /usr/share/fonts/TTF &&
tar -xf sazanami-20040629.tar.bz2 &&
cp -rf sazanami-20040629/*.ttf /usr/share/fonts/TTF/ &&

# General configuration
echo "Configuring..." &&
cd /home/* &&
cp -af inity.sh/~/. ./ &&

# Install EGL Wayland
#bash egl-wayland-install.sh &&

# Blacklist Nouveau
#mkdir -p /etc/modprob.d &&
#echo "blacklist nouveau" > /etc/modprob.d/blacklist.conf &&

# Change modeset
echo "Enabling Nvidia modeset..." &&
sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT=.*/GRUB_CMDLINE_LINUX_DEFAULT="nvidia-drm.modeset=1"/' /etc/default/grub &&
grub-mkconfig -o /boot/grub/grub.cfg &&

# Update GDM rules
#sed -i "s/DRIVER/#DRIVER/g" /usr/lib/udev/rules.d/61-gdm.rules &&

# Generate new initramfs image
#dracut -q /boot/initramfs-$(uname -r).img $(uname -r) --force &&

# Enable kms-modifiers
#gsettings set org.gnome.mutter experimental-features [\"kms-modifiers\"] &&

#audio
#xbps-install -Sy alsa-utils alsaequal &&
#ln -sf /usr/lib/ladspa/caps.so /usr/lib/caps.so &&

#echo "Removing bell sounds" &&
#sed -i "s/# set bell-style none/set bell-style none/g" /etc/inputrc &&

# Services
echo "Enabling services..." &&
ln -sf /etc/sv/dbus /var/service/ &&
ln -sf /etc/sv/sddm /var/service/ &&
ln -sf /etc/sv/connmand /var/service/ &&

# Reboot
echo "Rebooting..." &&
reboot ||

# Fail
echo "Installation failed, glhf."
