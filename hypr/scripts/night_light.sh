#!/usr/bin/env bash

state_file="$HOME/.config/hypr/.data/night_light"
temperature=7500

if ! [ -f $state_file ]; then
	touch $state_file
	wlsunset -T $temperature
else
	rm $state_file
	killall wlsunset
fi
