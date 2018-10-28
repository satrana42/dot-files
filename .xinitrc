#!bin/bash
xrandr --output eDP-1 --mode 2560x1440

X_RESOURCES=~/.Xresources
X_RESOURCES_THEME=~/codes/Xresources-themes/nord.Xresources
[[ -f "${X_RESOURCES}" ]] && xrdb "${X_RESOURCES}"
[[ -f "${X_RESOURCES_THEME}" ]] && xrdb -merge "${X_RESOURCES_THEME}"

exec i3
