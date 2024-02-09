# Install prerequisites
sudo xbps-install -y gettext python3 python3-pip python3-wheel python3-psutil python3-setuptools python3-cairo python3-gobject cairo-devel desktop-file-utils xdg-user-dirs xdg-utils gtk-update-icon-cache shared-mime-info pkg-config gobject-introspection

# Remove tmp grapejuice path if exists
rm -fr /tmp/grapejuice

# Clone grapejuice repo
git clone --depth=1 https://gitlab.com/brinkervii/grapejuice.git /tmp/grapejuice

# Install
cd /tmp/grapejuice
./install.py
