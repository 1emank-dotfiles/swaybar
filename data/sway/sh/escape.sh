mode="${1:-default}"

if [ "$mode" = capslock ]; then
    swaymsg input type:keyboard xkb_options caps:capslock
    swaymsg mode capslock
else
    swaymsg input type:keyboard xkb_options caps:swapescape
    swaymsg mode default
fi
