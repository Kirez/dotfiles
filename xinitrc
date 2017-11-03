#!/bin/sh

#exec gnome-session
xrdb -merge $HOME/.config/X11/.Xresources
xrdb -merge $HOME/.cache/wal/colors.Xresources
xset r rate 250 30
nitrogen --restore
systemctl --user set-environment DISPLAY=:0
exec i3
