# Quit on error
set -e

# Go to current directory
cd $(dirname $0)

# Clone nvtop
git clone https://github.com/Syllo/nvtop.git

# Make build directory
mkdir nvtop/build
cd nvtop/build

# Build from source
cmake ..
make

# Install
make install

# Delete folder
cd ../..
rm -r nvtop
