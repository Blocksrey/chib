#!/bin/bash

# General configuration
echo "Configuring..." &&

cd /home/* &&
cp -f inity.sh/~/. . &&

echo "Created configuration files" ||
echo "Failed to create configs"