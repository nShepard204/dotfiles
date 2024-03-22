#!/bin/bash

echo "Installing i3 dependencies..."
sudo apt install libev-dev libxkbcommon-x11-dev libxkbcommon-dev libpango1.0-dev libpangocairo-1.0-0 libpangoft2-1.0-0 libpangoxft-1.0-0 libstartup-notification0-dev libxcb-cursor-dev libxcb-keysyms1-dev libxcb-icccm4-dev libxcb-xrm-dev libyajl-dev libxcb-xinerama0-dev libxcb-shape0-dev libxcb-randr0-dev dmenu meson libxcb-xkb-dev libxcb-util0-dev libpcre2-dev libcairo2-dev

echo "Installing i3status dependencies..."
sudo apt install autoconf libconfuse-dev libyajl-dev libasound2-dev libiw-dev asciidoc libpulse-dev libnl-genl-3-dev meson

echo "Installing dunst dependencies..."
sudo apt install libdbus-1-dev libx11-dev libxinerama-dev libxrandr-dev libxss-dev libglib2.0-dev libpango1.0-dev libgtk-3-dev libxdg-basedir-dev libgdk-pixbuf-2.0-dev libnotify-dev

