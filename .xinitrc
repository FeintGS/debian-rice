#!/usr/bin/env bash

xset r rate 200 50
xsetroot -cursor_name left_ptr

ln -sf $HOME/.config/polybar/config-bspwm $HOME/.config/polybar/config
. $HOME/.config/polybar/launch &
. $HOME/.config/conky/launch &
. $HOME/.config/compton/launch &
feh --bg-fill ~/Wallpapers/wallpaper-light.png &
dunst &

exec bspwm
