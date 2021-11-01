#!/bin/bash

cd $(dirname "$0") &&

# Home setup
echo "Seting up home directory..." &&

cp -rf ./~/. $(getent passwd $SUDO_USER | cut -d: -f6) &&

echo "Created home files" ||
echo "Failed to create home config"