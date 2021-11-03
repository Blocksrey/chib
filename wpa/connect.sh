set -e

cp wpa_supplicant.conf /etc/wpa_supplicant

wpa_passphrase $1 $2 >> /etc/wpa_supplicant/wpa_supplicant.conf

ln -sf /usr/share/dhcpcd/hooks/10-wpa_suplicant /usr/libexec/dhcpcd-hooks

ln -sf /etc/sv/dhcpcd /var/service

sv restart dhcpcd
