# Source: https://www.reddit.com/r/voidlinux/comments/lp5w87/how_i_got_pipewire_working_on_void_as_a_pulse/

# Kill on errors
set -e

# Function for replacing leading character with a space
space_first() {
	sed -i "s|.$2| $2|g" $1
}

# Install required packages
xbps-install -y alsa-utils pulseaudio-utils pipewire alsa-pipewire dbus elogind

# Copy config template to correct place
cp -r /usr/share/pipewire /etc/pipewire

# Create directory and symbolic links for alsa
mkdir -p /etc/alsa/conf.d
ln -sf /usr/share/alsa/alsa.conf.d/50-pipewire.conf /etc/alsa/conf.d
ln -sf /usr/share/alsa/alsa.conf.d/99-pipewire-default.conf /etc/alsa/conf.d

# Enable elogind service
ln -sf /etc/sv/elogind /var/service
ln -sf /etc/sv/dbus /var/dbus

# Remove leading space in pipewire config
space_first /etc/pipewire/pipewire.conf '{ path = "/usr/bin/pipewire" args = "-c pipewire-pulse.conf" }'
