#!/bin/sh

filename="$(xdg-user-dir PICTURES)/Screenshots/Screenshot_$(date +'%Y-%m-%d_%H-%M-%S.png')"

grim -g "$(slurp -d)" $filename
cat $filename | wl-copy
