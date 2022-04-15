#!/bin/sh

# setup vars
source $HOME/scripts/global.sh

# run x11
xinit $HOME/.config/xorg/xinitrc 2> /dev/null
