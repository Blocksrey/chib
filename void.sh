##################################################
# Voidy, by Jeffrey Skinner.                     #
# Voidy is personalized specifically for myself, #
# however feel free to use it as you'd like.     #
##################################################

bash packages/install.sh &&
bash intel-undervolt/install.sh &&
bash sazanami/install.sh &&
#bash egl-wayland-install.sh &&

# Change modeset
echo "Enabling Nvidia modeset..." &&
sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT=.*/GRUB_CMDLINE_LINUX_DEFAULT="nvidia-drm.modeset=1"/' /etc/default/grub &&
grub-mkconfig -o /boot/grub/grub.cfg &&

# Services
echo "Enabling services..." &&
ln -sf /etc/sv/dbus /var/service &&
ln -sf /etc/sv/sddm /var/service &&
ln -sf /etc/sv/connmand /var/service &&

# restartttt
#reboot &&
#echo "Rebooting" ||
#echo "Failed TO FUCKING INSTALL"