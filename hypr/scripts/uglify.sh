#!/bin/sh

state_file="$HOME/.config/hypr/.data/uglify"

restore() {
	state_file=$1

	if [ -f $state_file ]; then
		hyprctl --batch "keyword animations:enabled 0; keyword decoration:blur:enabled 0"
	else
		hyprctl --batch "keyword animations:enabled 1; keyword decoration:blur:enabled 1"
	fi
}

toggle() {
	state_file=$1
	waybar_alt_config_dir="$HOME/.config/waybar/alt"

	if ! [ -f $state_file ]; then
		touch $state_file
		notify-send -h string:x-canonical-private-synchronous:sys-notify -u normal -i "" "Uglify enabled"
		hyprctl --batch "keyword animations:enabled 0; keyword decoration:blur:enabled 0"
		killall waybar && waybar --config "$waybar_alt_config_dir/config" --style "$waybar_alt_config_dir/style.css" &
	else
		rm $state_file
		notify-send -h string:x-canonical-private-synchronous:sys-notify -u normal -i "" "Uglify disabled"
		hyprctl --batch "keyword animations:enabled 1; keyword decoration:blur:enabled 1"
		killall waybar && waybar &
	fi
}

if [[ $1 == "--restore" ]]; then
	restore $state_file
else
	toggle $state_file
fi
