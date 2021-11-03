#!/bin/bash
##################################################
# Voidy, by Jeffrey Skinner.                     #
# Voidy is personalized specifically for myself, #
# however feel free to use it as you'd like.     #
##################################################

set -e

order=(
	home
	sazanami
	packages
	nvtop
	intel-undervolt
	pipewire-pulse
	#nvidia-nvfbc
)

for i in ${order[@]}
do
	echo $i: BEGIN

	./$i/install.sh

	echo $i: END
done

sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT=.*/GRUB_CMDLINE_LINUX_DEFAULT="nvidia-drm.modeset=1"/' /etc/default/grub
update-grub

ln -sf /etc/sv/sddm /var/service

reboot
