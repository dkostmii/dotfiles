#!/bin/sh

swayidle -w timeout 600 'hyprctl dispatch dpms off && swaylock' \
            resume 'hyprctl dispatch dpms on' &
