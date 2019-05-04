#!/bin/sh
BUILD_PATH="$PWD/build"

if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root"
    exit 1
fi

mkdir $BUILD_PATH
cd $BUILD_PATH

# Basic prerequisites for setup
apt install git

# X11 graphical stack
apt install xorg xbacklight xclip xcape x11-xkb-utils

# User applications
apt install dunst feh gmpc mpd mpv vim-gtk thunderbird rofi i3 conky \
        chromium nautilus maim network-manager

# Useful command line tools
apt install htop neofetch qalc exa imagemagick apt-file

# Fonts
apt install fonts-inconsolata unifont fonts-noto-color-emoji fonts-noto-core fonts-noto-extra

# i3-gaps installation
apt install gcc make dh-autoreconf libxcb-keysyms1-dev libpango1.0-dev \
        libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev \
        libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev    \
        libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev \
        libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0-dev


cd $BUILD_PATH
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/

../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make -j$(nproc)
make install
cd $BUILD_PATH

# Suckless Terminal installation
git clone https://www.github.com/FeintGS/st
cd st
make -j$(nproc)
make install

# Polybar installation
apt install build-essential git cmake cmake-data pkg-config python3-sphinx \
        libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev \
        libxcb-composite0-dev  python-xcbgen xcb-proto libxcb-image0-dev \
        libxcb-ewmh-dev libxcb-icccm4-dev libxcb-xkb-dev libxcb-xrm-dev \
        libxcb-cursor-dev libasound2-dev libpulse-dev i3-wm libjsoncpp-dev \
        libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev
cd $BUILD_PATH
git clone --recursive https://github.com/jaagr/polybar
cd polybar
mkdir build
cd build
cmake ..
make -j$(nproc)
make install
cd $BUILD_PATH

# Compton (tryone144's fork) installation

# Other stuff I missed
apt install mpd network-manager network-manager-gnome pulseaudio xbacklight thunderbird gnome-system-monitor gmpc tmux conky dunst mpv fonts-ubuntu fonts-ubuntu-console xclip zsh feh maim oomox libnotify-bin libnotify-dev libasound2 libasound2-dev tlp acpid udev libmpdclient-dev parted gparted gdisk fdisk mpc easytag easytag-nautilus rsync

# oomox theme editor
