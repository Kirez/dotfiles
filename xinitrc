#!/bin/sh

#exec gnome-session
xrdb -merge $HOME/.config/X11/.Xresources
xrdb -merge $HOME/.cache/wal/colors.Xresources
xset r rate 250 30
nitrogen --restore
systemctl --user set-environment DISPLAY=:0
export $(dbus-launch)
exec i3
