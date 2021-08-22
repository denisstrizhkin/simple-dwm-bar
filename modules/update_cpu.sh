#!/bin/bash

update_cpu () {
	# get cpu usage
	cpu_data="$(top -bn1 | grep Cpu | awk '{print $2}')"
	
	# format and return
	printf "C:%5.1f%%" $cpu_data
}

update_cpu
