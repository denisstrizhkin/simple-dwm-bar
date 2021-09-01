#!/bin/bash

update_keyboard () {
	# get cpu usage
	keyboard_data=$(xkb-switch)

	if [ "$keyboard_data" = "gb" ]
	then
		keyboard_data="jp"
	fi

	# format and return
	printf " %2s" $keyboard_data
}

update_keyboard
