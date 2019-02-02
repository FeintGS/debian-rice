#!/bin/bash

# dependencies for i3-gaps
libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0-dev

# a2x without the entire 800MiB asciidoc package
apt-get --no-install-recommends install asciidoc xmlto -y

# out2html utility
git clone https://github.com/DaveDavenport/out2html
cd out2html
autoreconf -i
mkdir build
cd build
../configure
make
sudo make install

# dunst
git clone https://github.com/dunst-project/dunst
sudo apt install -y dbus libxinerama libxrandr libxss glib pango/cairo libgtk-3-dev
cd dunst
make
sudo make install
