#!/bin/sh

# verify vars
if [[ -z $CONFIG_PRIMARY_SCREEN ]] || [[ -z $CONFIG_PRIMARY_MODE ]]; then exit; fi

# create mode
xrandr --newmode $(cvt $CONFIG_PRIMARY_MODE | grep Modeline | awk '{$1=""}1')
xrandr --addmode $CONFIG_PRIMARY_SCREEN $(cvt $CONFIG_PRIMARY_MODE | grep Modeline | awk '{print $2}')
xrandr --output $CONFIG_PRIMARY_SCREEN --mode $(cvt $CONFIG_PRIMARY_MODE | grep Modeline | awk '{print $2}')
