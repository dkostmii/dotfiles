#!/bin/sh

font=Andika
font_size=18
color=FFFFFFFF

i3lock --indicator --radius 80 --ring-width 20\
	--image="$(xdg-user-dir PICTURES)/wallpaper.jpg"\
	--clock\
	--time-font=$font --date-font=$font --layout-font=$font --verif-font=$font --wrong-font=$font --greeter-font=$font \
	--time-size=$font_size --date-size=$font_size --layout-size=$font_size --verif-size=$font_size --wrong-size=$font_size --greeter-size=$font_size \
	--layout-color=$color --time-color=$color --date-color=$color greeter-color=$color \
	--blur=2 --time-str="%R" --date-str="%a %e of %B"\
	--ignore-empty-password --show-failed-attempts\
	--greeter-pos="ix:iy+110" --keylayout 0\
	--greeter-text="Hello, World!" --nofork
