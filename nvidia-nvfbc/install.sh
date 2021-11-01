#!/bin/sh

# Exit on any errors
set -e

# Go to this directory
cd $(dirname $0)

# Attempt git install
xbps-install -yS git

# Clone the nvidia-patch repository
git clone https://github.com/keylase/nvidia-patch.git

# Run the patch
./nvidia-patch/patch-fbc.sh

# Remove the repository folder
rm -r nvidia-patch