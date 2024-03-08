#!/usr/bin/bash

# Kitty & Picom are managed by i3's config. Doesn't need to be handled here.
# I3
I3_CFG_SRC="$HOME/repos/dotfiles/i3/config"
I3_CFG_DEST="$HOME/.config/i3/config"
if [ -n "$(diff "$I3_CFG_SRC" "$I3_CFG_DEST")" ]; then
	echo "I3 Config Updated. Copying Changes."
	cp "$I3_CFG_SRC" "$I3_CFG_DEST"
else
	echo "No changes in I3 config. Skipping."
fi

# Dunst
DUNST_CFG_SRC="$HOME/repos/dotfiles/dunstrc"
DUNST_CFG_DEST="/usr/local/etc/xdg/dunst/dunstrc"
if [ -n "$(diff "$DUNST_CFG_SRC" "$DUNST_CFG_DEST")" ]; then
	echo "Dunst Config Updated. Copying Changes."
	cp "$DUNST_CFG_SRC" "$DUNST_CFG_DEST"
else 
	echo "No changes in Dunst config. Skipping."
fi
