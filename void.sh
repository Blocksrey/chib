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

	# Drivers
	nvidia
	libatomic
	alsa-utils
	dbus

	# Compositors
	xauth
	xinit
	xorg-server
	xorg-input-drivers
	xorg-video-drivers

	# Web browser
	firefox

	# Display manager
	sddm

	# Terminal
	alacritty

	# Window manager
	i3
	i3status-rust

	# Launcher
	rofi

	# Media
	mpv
	youtube-dl
	ffmpeg

	# Huh
	#qbittorrent
	#gimp
	rclone
	feh
	deadbeef
	NetworkManager
	
	# Grapejuice stuff
	python3
	python3-cairo-devel
	gobject-introspection
	xdg-user-dirs
	xdg-utils
)

# Sazanami font
printf "\nInstalling sazanami fonts..." &&
mkdir -p /usr/share/fonts/TTF &&
7z x sazanami-20040629.tar.bz2 -aoa &&
7z x sazanami-20040629.tar -aoa  &&
cp -rf sazanami-20040629/*.ttf /usr/share/fonts/TTF/ &&

# i3
printf "\nConfiguring i3..." &&
cd /home/* &&
cp -rf inity.sh/.config ./ &&

# Packages
printf "\nInstalling packages..." &&
xbps-install -Syu \
void-repo-multilib \
void-repo-nonfree \
void-repo-multilib-nonfree &&
xbps-install -Sy ${packages[@]} &&

# Install EGL Wayland
#bash egl-wayland-install.sh &&

# Blacklist Nouveau
#mkdir -p /etc/modprob.d &&
#printf "blacklist nouveau" > /etc/modprob.d/blacklist.conf &&

# Change modeset
printf "\nEnabling Nvidia modeset..." &&
sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT=.*/GRUB_CMDLINE_LINUX_DEFAULT="nvidia-drm.modeset=1"/' /etc/default/grub &&
grub-mkconfig -o /boot/grub/grub.cfg &&

# Update GDM rules
#sed -i "s/DRIVER/#DRIVER/g" /usr/lib/udev/rules.d/61-gdm.rules &&

# Generate new initramfs image
#dracut -q /boot/initramfs-$(uname -r).img $(uname -r) --force &&

# Enable kms-modifiers
#gsettings set org.gnome.mutter experimental-features [\"kms-modifiers\"] &&

printf "\nRemoving bell sounds" &&
sed -i "s/# set bell-style none/set bell-style none/g" /etc/inputrc &&

# Services
printf "\nEnabling services..." &&
ln -sf /etc/sv/dbus /var/service/ &&
ln -sf /etc/sv/sddm /var/service/ &&
ln -sf /etc/sv/NetworkManager /var/service/ &&

printf "\nRead the stuff" &&
sleep 5 &&

# Reboot
printf "\nRebooting..." &&
reboot ||

# Fail
printf "\nInstallation failed, glhf."
