#!/bin/bash

printf "\nInstalling i3 dependencies...\n\n"
sudo apt install libev-dev libxkbcommon-x11-dev libxkbcommon-dev libpango1.0-dev libpangocairo-1.0-0 libpangoft2-1.0-0 libpangoxft-1.0-0 libstartup-notification0-dev libxcb-cursor-dev libxcb-keysyms1-dev libxcb-icccm4-dev libxcb-xrm-dev libyajl-dev libxcb-xinerama0-dev libxcb-shape0-dev libxcb-randr0-dev dmenu meson libxcb-xkb-dev libxcb-util0-dev libpcre2-dev libcairo2-dev

printf "\nInstalling i3status dependencies...\n\n"
sudo apt install autoconf libconfuse-dev libyajl-dev libasound2-dev libiw-dev asciidoc libpulse-dev libnl-genl-3-dev meson

printf "\nInstalling i3 from source...\n\n"
mkdir -p $HOME/repos/third-party
cd $HOME/repos/third-party
git clone https://github.com/i3/i3
cd i3
git checkout stable
mkdir -p build && cd build
meson ..
ninja
sudo ninja install

printf "\nInstalling i3status from source...\n\n"
mkdir -p $HOME/repos/third-party
cd $HOME/repos/third-party
git clone https://github.com/i3/i3status
cd i3status
mkdir -p build && cd build
meson ..
ninja
sudo ninja install

printf "\nInstalling dunst dependencies...\n\n"
sudo apt install libdbus-1-dev libx11-dev libxinerama-dev libxrandr-dev libxss-dev libglib2.0-dev libpango1.0-dev libgtk-3-dev libxdg-basedir-dev libgdk-pixbuf-2.0-dev libnotify-dev

printf "\nInstalling dunst from source...\n\n"
mkdir -p $HOME/repos/third-party
cd $HOME/repos/third-party
git clone https://github.com/dunst-project/dunst 
cd dunst
make
sudo make install

printf "\nInstalling neovim dependencies...\n\n"
sudo apt install ninja-build gettext cmake unzip curl build-essential

printf "\nInstalling neovim from source...\n\n"
mkdir -p $HOME/repos/third-party
cd $HOME/repos/third-party
git clone https://github.com/neovim/neovim
cd neovim
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

printf "\nInstalling Oh-My-Zsh...\n\n"
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

printf "\nInstalling spotify, discord & caprine from snap...\n\n"
sudo snap install spotify discord caprine
