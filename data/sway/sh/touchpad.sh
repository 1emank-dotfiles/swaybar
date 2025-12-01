#!/bin/sh
STATE=$(
    swaymsg -rt get_inputs |
            jq -r '.[] | select(.type=="touchpad").libinput.send_events'
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
