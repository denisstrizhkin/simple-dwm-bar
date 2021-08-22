#!/bin/bash

update_cpu () {
	# get date in specific format 
	cpu_string="CPU:$(top -bn1 | grep Cpu | awk '{print $2}')"
	
	# return it
	printf "$cpu_string"
}

update_cpu
