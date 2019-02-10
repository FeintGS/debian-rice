#!/bin/bash

# software dev
sudo apt install -y git build-essential gcc clang cmake autoconf make automake openssl openssh-client python2 python3 libjsoncpp-dev libyagl-dev

# sysadmin and info
sudo apt install -y os-prober ntfs-3g dosfstools acpi tlp

# desktop and compositor
sudo apt install -y compton

# wireless networking
sudo apt install -y net-tools network-manager network-manager-gnome

# Xorg server and utils
sudo apt install -y xserver-xorg 'x11-(common|utils|xkb-utils|xserver-utils)' 'x11proto-(composite|core|damage|dri2|fixes|gl|input|kb|randr|render|xext|xf86vidmode|xinerama)-dev' xcb xcb-proto 'libx11-(dev|xcb|xcb1)' 'libxcb-(composite0|dri2|dri3|ewmh|glx0|icccm4|image0|keysyms1|present|randr0|record0|render0|res0|screensaver0|shape0|shm0|util0|xf86dri0|xfixes0|xinerama0|xkb|xtest0|xv0|xvmc0)-dev' libxcb1 'libx(composite|damage|dmcp|ext|fixes|ft|kbfile)-dev'

# text editing, markup, docs, etc.
sudo apt install -y vim-gtk3
sudo apt install -y --no-install-recommends asciidoc asciidoc-base asciidoc-common manpages manpages-dev libxml libxml2 libxml2-dev libxml2-utils mupdf

# dunst and deps
sudo apt install -y libnotify-bin libnotify-dev
sudo apt install -y dunst

# conky and multimedia players
sudo apt install -y pulseaudio libasound2 libasound2-dev libcairo2 libcairo2-dev

sudo apt install -y conky mpd mpc mpv ncmpcpp pavucontrol

# fun miscellaneous stuff
