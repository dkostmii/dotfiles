#!/bin/sh

swayidle -w timeout 600 'hyprctl dispatch dpms off && swaylock -f &' resume 'hyprctl dispatch dpms on' \
            before-sleep 'hyprctl dispatch dpms on && swaylock -f &' \
            lock 'swaylock -f'
