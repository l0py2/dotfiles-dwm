picom -b
dunst &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
[ -x ~/.fehbg ] && ~/.fehbg &
xprop -root -set WM_NAME "$(whoami)" &
exec dwm
