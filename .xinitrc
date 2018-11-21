#!bin/bash
xrandr --output eDP-1 --mode 2560x1440

X_RESOURCES=~/.Xresources
[[ -f "${X_RESOURCES}" ]] && xrdb -cpp cpp "${X_RESOURCES}"

exec i3
