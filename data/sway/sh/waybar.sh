pkill 'waybar|waybar.sh'

prefix="$HOME/.config/sway/waybar"

waybar -c "$prefix/bottom.jsonc" -s "$prefix/bottom.css" &
waybar -c "$prefix/top.jsonc" -s "$prefix/top.css" &
