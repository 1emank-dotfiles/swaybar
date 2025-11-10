#!/bin/sh
STATE=$(
        swaymsg -t get_inputs |
        grep '"type": "touchpad"' -A6 -m 1 |
        grep send_events |
        cut -d\" -f4
)
[ "$1" = toggle ] &&
        if [ "$STATE" = enabled ]
        then swaymsg input type:touchpad events disabled
        else swaymsg input type:touchpad events enabled
        fi

if [ "$STATE" = enabled ]
then echo "󰟸"
else echo "󰤳"
fi
