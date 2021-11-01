#!/bin/sh

# Quit on any errors
set -e

# Go to this directory
cd $(dirname $0)

# Create a TTF folder in fonts
mkdir -p /usr/share/fonts/TTF

# Extract the font archive
tar -xf sazanami-20040629.tar.bz2

# Copy the fonts into user fonts
cp -f sazanami-20040629/*.ttf /usr/share/fonts/TTF

# Remove the folder
rm -r sazanami-20040629