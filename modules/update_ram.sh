#!/bin/bash

update_ram () {
	# get cpu usage
	ram_data=$(free -h | grep Mem)
	ram_all=$(echo $ram_data | awk '{print $2}')
	ram_used=$(echo $ram_data | awk '{print $3}')

	# format and return
	printf "RAM:%5s/%5s" $ram_used $ram_all
}

update_ram
