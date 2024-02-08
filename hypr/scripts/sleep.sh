swayidle -w timeout 300 'swaylock' \
            timeout 600 'hyprctl dispatch dpms off' \
            resume 'hyprctl dispatch dpms on' \
            before-sleep 'swaylock' \
            timeout 900 'systemctl suspend' \
            resume 'hyprctl dispatch dpms on' &
