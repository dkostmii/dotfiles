#!/usr/bin/env bash

icon_path="$HOME/.config/hypr/icons/lang"
icon="$icon_path/language.png"

lang=$(hyprctl devices -j | gojq -r '.keyboards[] | .active_keymap' | sort -r | uniq -c | awk '{$1=$1};1' | head -n 1 | cut -d' ' -f2-)
case $lang in
	"English (US)")
		lang="English"
		icon="$icon_path/us.png"
		;;
	"Ukrainian")
		lang="Українська"
		icon="$icon_path/ua.png"
		;;
esac

# Notify
notify-send -h string:x-canonical-private-synchronous:sys-notify -u low -i "$icon" "$lang"
