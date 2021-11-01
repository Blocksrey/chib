#!/bin/sh

# Exit on any error
set -e

# Go to script directory
cd $(dirname $0)

# Download intel-undervolt
xbps-install -yS intel-undervolt

# Copy configuration
cp intel-undervolt.conf /etc

# Apply changes
intel-undervolt apply