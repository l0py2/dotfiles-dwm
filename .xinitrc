setxkbmap pt
picom -b
dunst &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
[ -x ~/.fehbg ] && ~/.fehbg &
exec dwm
