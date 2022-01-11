# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

export XDG_RUNTIME_DIR=/tmp/$UID-runtime-dir
mkdir -p $XDG_RUNTIME_DIR
chmod 0700 $XDG_RUNTIME_DIR

xinit /usr/bin/bspwm &
