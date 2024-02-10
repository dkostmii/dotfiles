#!/bin/sh

keyboards=$(hyprctl devices -j | gojq -r '.keyboards[] | .name' | tr "\n" " ")

for keyboard in $keyboards; do
	hyprctl switchxkblayout $keyboard next > /dev/null
done
