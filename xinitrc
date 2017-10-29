#!/bin/sh

#exec gnome-session
xrdb -merge $HOME/.config/X11/.Xresources
xrdb -merge $HOME/.cache/wal/colors.Xresources
xset r rate 250 20
exec i3
