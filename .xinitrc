#!/usr/bin/env bash

# Refresh rate to match display
xset r rate 200 50
xsetroot -cursor_name left_ptr

# Make the CapsLock key more useful
. $HOME/.xkb_remap

# Desktop environment
[ -f ~/.Xresources ] && xrdb ~/.Xresources
. $HOME/.config/compton/launch &
. $HOME/.config/polybar/launch &
dunst &
exec bspwm
