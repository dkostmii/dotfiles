#!/bin/sh

swayidle -w timeout 600 'hyprctl dispatch dpms off && swaylock -f' resume 'hyprctl dispatch dpms on' \
            timeout 630 'systemctl suspend && hyprctl dispatch dpms on' \
            before-sleep 'swaylock -f' \
            lock 'swaylock -f'
