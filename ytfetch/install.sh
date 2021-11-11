#!/usr/bin/sh

# Quit on errors
set -e

# Go to this directory
cd $(dirname $0)

# Install the shit
cp ytfetch /usr/bin/ytfetch
