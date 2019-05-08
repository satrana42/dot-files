#!bin/bash
xrandr --output eDP-1 --mode 1920x1080

X_RESOURCES=~/.Xresources
[[ -f "${X_RESOURCES}" ]] && xrdb -cpp cpp "${X_RESOURCES}"

exec i3
