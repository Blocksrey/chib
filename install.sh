########################################################
# Chibi Linux                                          #
# Jeffrey Skinner <jeff@je.gy> (blocksrey)             #
#                                                      #
# Chibi Linux is personalized specifically for myself, #
# however feel free to use it as you'd like.           #
########################################################
cd `dirname $0`

#xbps-install -y gcc llvm flex libXext-devel libXfixes-devel libXxf86vm-devel libXrandr-devel

for module in scripts/*; do
	cp $module /bin
done

sors `dirname $0`/builders `dirname $0`/sources/pre

for module in group/*/; do
	./$module/install
done

for module in single/*; do
	./$module
done

sors `dirname $0`/builders `dirname $0`/sources/Wayland
sors `dirname $0`/builders `dirname $0`/sources/app

echo good job