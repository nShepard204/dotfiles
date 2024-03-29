#!/bin/bash
# Kill all wallpaper processes.
kill -15 $(ps aux | grep wallpapers.sh | awk '{ print $2 }')
notify-send "Wallpapers killed"
sh ~/repos/dotfiles/wallpapers.sh &
notify-send "Wallpapers restored"
