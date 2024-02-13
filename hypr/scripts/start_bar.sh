#!/bin/sh

uglify_state_file="$HOME/.config/hypr/.data/uglify"
waybar_alt_config_dir="$HOME/.config/waybar/alt"

if [ -f $uglify_state_file ]; then
	waybar --config "$waybar_alt_config_dir/config" --style "$waybar_alt_config_dir/style.css" &
else
	waybar &
fi
