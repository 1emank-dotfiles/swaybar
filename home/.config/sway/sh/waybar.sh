pkill 'waybar|waybar.sh'

waybar -c ~/.config/sway/waybar/config.jsonc \
        -s ~/.config/sway/waybar/style.css &

waybar -c ~/.config/sway/waybar/alt.jsonc \
        -s ~/.config/sway/waybar/style.css &
