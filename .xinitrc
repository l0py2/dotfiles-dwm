picom -b
dunst &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
[ -x ~/.fehbg ] && ~/.fehbg &
xprop -root -set WM_NAME "$(whoami)" &

export XDG_CURRENT_DESKTOP=dwm
exec dbus-run-session dwm
