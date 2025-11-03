#!/bin/sh
STATE=$(
        swaymsg -t get_inputs |
        grep '"type": "touchpad"' -A6 -m 1 |
        grep send_events |
        cut -d\" -f4
)
if [ "$1" = toggle ] && [ "$STATE" = enabled ]; then
        swaymsg input type:touchpad events disabled
elif [ "$1" = toggle ]; then
        swaymsg input type:touchpad events enabled
fi
if [ "$STATE" = enabled ]; then
        echo "󰟸"
else
        echo "󰤳"
fi
