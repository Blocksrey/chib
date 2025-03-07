# DeDeb, a platform agnostic deb package installer
# blocksrey

# Make directory for package contents
mkdir $1.cont

# Extract all contents
ar x $1 --output $1.cont
cd $1.cont
tar xf data.tar.xz

# Copy extracted folders to root filesystem
for dir in */; do
	cp -rT $dir /$dir
done

# Revert executed directory's state
cd ..
rm -r $1.cont