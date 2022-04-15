#!/bin/sh

# start user scripts
sh $HOME/scripts/screen.sh
sh $HOME/scripts/keyboard.sh
sh $HOME/scripts/wallpaper.sh

# run clean
sh $HOME/scripts/clean.sh &
