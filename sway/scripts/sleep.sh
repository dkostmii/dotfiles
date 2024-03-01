#!/bin/sh

swayidle -w timeout 600 'swaymsg "output * dpms off" && swaylock -f' resume 'swaymsg "output * dpms on"' \
            timeout 630 'systemctl suspend && swaymsg "output * dpms on"' \
            before-sleep 'swaylock -f' \
            lock 'swaylock -f'
