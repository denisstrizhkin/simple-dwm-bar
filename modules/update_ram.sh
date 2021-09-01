#!/bin/bash

update_ram () {
	# get cpu usage
	ram_data=$(free | grep Mem: | awk '{print $3/$2*100}')
	
	# format and return
	if (( $(echo "$ram_data < 10.0" |bc -l) ))
	then
		printf " %1.1f" $ram_data
	else
		printf " %3.0f" $ram_data
	fi
}

update_ram
