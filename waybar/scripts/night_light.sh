#!/bin/bash

state_file="$HOME/.config/hypr/.data/night_light"
temperature_file="$HOME/.config/hypr/.data/night_light_temp"

TEMPERATURE="–"

if [ -f $temperature_file ]; then
	TEMPERATURE=$(cat ~/.config/hypr/.data/night_light_temp)
fi

if [ -f $state_file ]; then
	echo "$(echo $TEMPERATURE)K 󱩌"
else
	echo "󱩍"
fi

