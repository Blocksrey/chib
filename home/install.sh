#!/bin/sh

# Return fail on any error
set -e

# Go to file directory
cd $(dirname $0)

# Copy contents into user's home directory
cp -rf ./~/. $(getent passwd $SUDO_USER | cut -d: -f6)