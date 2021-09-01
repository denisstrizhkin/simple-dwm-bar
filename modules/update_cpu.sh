#!/bin/bash

update_cpu () {
	# get cpu usage
	cpu_data="$(top -bn1 | grep Cpu | awk '{print $2}')"
	
	# format and return
	if (( $(echo "$cpu_data < 10" |bc -l) ))
	then
		printf " %1.1f" $cpu_data
	else
		printf " %3.0f" $cpu_data
	fi
}

update_cpu
