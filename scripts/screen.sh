#!/bin/sh

# verify vars
if [[ -z $CONFIG_PRIMARY_SCREEN ]] || [[ -z $CONFIG_PRIMARY_MODE ]]; then exit; fi

# create mode
xrandr --newmode $(cvt $CONFIG_PRIMARY_MODE | grep Modeline | awk '{$1=""}1')
xrandr -s $(cvt $CONFIG_PRIMARY_MODE | grep Modeline | awk '{print $2}' | cut -d "\"" -f 2)
