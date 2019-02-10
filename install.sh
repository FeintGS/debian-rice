#!/bin/bash

#=======================
#  ____                 
# |  _ \  ___ _ __  ___ 
# | | | |/ _ \ '_ \/ __|
# | |_| |  __/ |_) \__ \
# |____/ \___| .__/|___/
#            |_|        
#======================= 

# #--X11 server libraries and deps--# #
sudo apt install -y xserver-xorg 'x11-(common|utils|xkb-utils|xserver-utils)' 'x11proto-(composite|core|damage|dri2|fixes|gl|input|kb|randr|render|xext|xf86vidmode|xinerama)-dev' xcb xcb-proto 'libx11-(dev|xcb|xcb1)' 'libxcb-(composite0|dri2|dri3|ewmh|glx0|icccm4|image0|keysyms1|present|randr0|record0|render0|res0|screensaver0|shape0|shm0|util0|xf86dri0|xfixes0|xinerama0|xkb|xtest0|xv0|xvmc0)-dev' libxcb1 'libx(composite|damage|dmcp|ext|fixes|ft|kbfile)-dev'

# #--For generating manpages from source--# #
sudo apt install -y --no-install-recommends asciidoc asciidoc-base asciidoc-common manpages manpages-dev libxml libxml2 libxml2-dev libxml2-utils

#==========================
#     _                    
#    / \   _ __  _ __  ___ 
#   / _ \ | '_ \| '_ \/ __|
#  / ___ \| |_) | |_) \__ \
# /_/   \_\ .__/| .__/|___/
#         |_|   |_|        
#==========================

## Multimedia stack [alsa+pulseaudio]
sudo apt install -y libasound2 libasound2-dev pulseaudio
sudo apt install -y mpd mpv mpc ncmpcpp pavucontrol
sudo apt install -y feh ffmpeg viewnior

## Productivity & Docs Opener
sudo apt install -y chromium-browser mupdf vim-gtk3

## Fonts
sudo apt install xfonts-terminus fonts-mplus fonts-font-awesome ttf-unifont

## Desktop [i3, polybar, conky, dmenu, dunst, ranger]
sudo apt install -y libnotify-bin libnotify-dev 	# dunst requirements
sudo apt install -y imagemagick uuid-runtime		# for album art script
sudo apt install -y libmpdclient-dexbacklight alsa 	# for conky music player
sudo apt install -y libcairo2 libcairo2-dev		# desktop graphics
sudo apt install -y conky-all				# needed to display images, weird
sudo apt install -y libiw-dev libxcb-util0-dev		# polybar deps

sudo apt install -y conky polybar compton i3 suckless-tools dunst ranger

## Battery life optimizations & screen settings
sudo apt install -y tlp acpi acpid acpitool
sudo apt install -y xbacklight redshift
sudo apt install -y cpufreqd fan

## Programming & dev
sudo apt install -y build-essential openssl openssh-client libjsoncpp-dev libyajl-dev
sudo apt install -y curl wget git autoconf automake make cmake 
sudo apt install -y clang gcc python3

## System admin, info, monitoring
sudo apt install -y gdisk gparted parted sudo gnome-disk-utility
sudo apt install -y neofetch htop
sudo apt install -y ntfs-3g os-prober grub dosfstools

## Networking [NetworkManager]
sudo apt install -y iw net-tools network-manager network-manager-gnome

## My personal system specific drivers [Lenovo ThinkPad T450s]
sudo apt install -y intel-microcode firmware-intel-sound firmware-linux-free firmware-linux-nonfree firmware-misc-nonfree
