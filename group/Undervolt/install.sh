cd `dirname $0`
xbps-install -y intel-undervolt
cp intel-undervolt.conf /etc
intel-undervolt apply