function toggle_led
  for scroll_lock_input in (ls /sys/class/leds | grep scrolllock)
    set -l brightness_file $(readlink -f "/sys/class/leds/$scroll_lock_input")/brightness
    echo -n $brightness_file

    set -f scroll_lock_state $(cat $brightness_file)

    if test $scroll_lock_state -eq 0
      set -f scroll_lock_state 1
    else
      set -f scroll_lock_state 0
    end

    begin; echo $scroll_lock_state | sudo tee $brightness_file; end > /dev/null

    if test $scroll_lock_state -eq 0
      echo ' turned on.'
    else
      echo ' turned off.'
    end
  end
end
