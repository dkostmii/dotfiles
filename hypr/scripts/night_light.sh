#!/usr/bin/env bash

DEFAULT_TEMP=4000
STEP=500
temperature_file="$HOME/.config/hypr/.data/night_light_temp"
state_file="$HOME/.config/hypr/.data/night_light"

if ! [ -f $temperature_file ]; then
	temperature=$DEFAULT_TEMP
	echo $temperature > $temperature_file
else
	temperature=$(cat $temperature_file)
fi

enable() {
	state_file=$1
	temperature=$2
	touch $state_file
	(wlsunset -t $temperature -T $(($temperature + 2500)) &> /dev/null) &
}

disable() {
	rm $state_file
	killall wlsunset
}

toggle() {
	state_file=$1
	temperature=$2
	if ! [ -f $state_file ]; then
		enable $state_file $temperature
	else
		disable $state_file $temperature
	fi
}

restart() {
	state_file=$1
	temperature=$2

	if [ -f $state_file ]; then
		disable $state_file $temperature
	fi

	enable $state_file $temperature
}

update_temperature() {
	temperature=$1
	echo $temperature > $temperature_file
}

if [[ $1 == "--dec" ]]; then
	if [ $temperature -gt 1000 ]; then
		update_temperature $(($temperature - $STEP))
		restart $state_file $temperature
	fi
elif [[ $1 == "--inc" ]]; then
	if [ $temperature -lt 6000 ]; then
		update_temperature $(($temperature + $STEP))
		restart $state_file $temperature
	fi
else
	toggle $state_file $temperature
fi
