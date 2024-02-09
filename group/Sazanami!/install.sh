# Depends on Zstandard

cd `dirname $0`

# Create the fonts folder
mkdir /usr/share/fonts

# Extract the font archive
zstd -d *.zst

# Move the fonts over
mv *.ttf /usr/share/fonts