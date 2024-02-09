# Install required packages
xbps-install -y pipewire alsa-pipewire wireplumber dbus
# elogind and rtkit seem optional but having them results in less warnings
# xdg-desktop-portal should also be there (varies per window manager)

# Create directory and symbolic links for alsa
# https://docs.voidlinux.org/config/media/pipewire.html#alsa-integration
mkdir -p /etc/alsa/conf.d
ln -sf /usr/share/alsa/alsa.conf.d/50-pipewire.conf /etc/alsa/conf.d
ln -sf /usr/share/alsa/alsa.conf.d/99-pipewire-default.conf /etc/alsa/conf.d

# Copy the configuration to the correct spot with modifications
# https://docs.voidlinux.org/config/media/pipewire.html#session-management
mkdir -p /etc/pipewire/
sed '/path.*=.*pipewire-media-session/s/{/#{/' /usr/share/pipewire/pipewire.conf > /etc/pipewire/pipewire.conf

# https://docs.voidlinux.org/config/media/pipewire.html#session-management
mkdir -p /etc/pipewire/pipewire.conf.d
echo 'context.exec = [ { path = "/usr/bin/wireplumber" args = "" } ]' > /etc/pipewire/pipewire.conf.d/10-wireplumber.conf

# you should launch pipewire with dbus-run-session