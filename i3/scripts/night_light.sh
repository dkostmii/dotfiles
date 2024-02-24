#!/usr/bin/env bash

DEFAULT_TEMP=3000
NORMAL_TEMP=6500
STEP=500
temperature_file="$HOME/.config/blugon/current"

if ! [ -f $temperature_file ]; then
	temperature=$DEFAULT_TEMP
	echo $temperature > $temperature_file
else
	temperature=$(cat $temperature_file)
	temperature=$(echo $temperature | cut -d'.' -f1)
fi

restore() {
	temperature=$1
	blugon -S $temperature
}

enable() {
	temperature=$1
	if [ $temperature -eq $NORMAL_TEMP ]; then
		temperature=$DEFAULT_TEMP
	fi

	blugon -S $temperature
}

disable() {
	blugon -S $NORMAL_TEMP
}

toggle() {
	temperature=$1
	if [ $temperature -eq $NORMAL_TEMP ]; then
		enable $temperature
	else
		disable $temperature
	fi
}

update_temperature() {
	temperature=$1
	blugon -S $temperature
}

if [[ $1 == "--dec" ]]; then
	if [ $temperature -gt 1000 ]; then
		update_temperature $(($temperature - $STEP))
	fi
elif [[ $1 == "--inc" ]]; then
	if [ $temperature -lt 6500 ]; then
		update_temperature $(($temperature + $STEP))
	fi
elif [[ $1 == "--restore" ]]; then
	restore $temperature
else
	toggle $temperature
fi
