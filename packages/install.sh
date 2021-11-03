#!/bin/bash

set -e

# Package list
packages=(
	# stupid shit
	make
	cmake
	meson
	ninja

	# compilers/engines
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
	st

	# windows
	sddm
	dmenu
	bspwm
	sxhkd

	# video/audio utilities
	mpv
	yt-dlp
	ffmpeg
	deadbeef
	feh
	pavucontrol

	# general utilities
	rtorrent
	#gimp
	connman
	lm_sensors
	qrencode
	git
	firefox
	obs

	# grapejuice
	#wine
	#winetricks
	#python3
	#python3-cairo-devel
	#gobject-introspection
	#xdg-user-dirs
	#xdg-utils
)

xbps-install -yS void-repo-nonfree
xbps-install -yS ${packages[@]}
