#!/bin/sh

[ -f ~/Pictures/wallpaper ] && feh --bg-fill ~/Pictures/wallpaper
~/.local/bin/dwm-status &
exec ~/.local/bin/dwm-loop
