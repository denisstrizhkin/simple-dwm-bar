#!/bin/bash

# script dir
scripts_dir="/home/denis/.local/bin/DWM_Scripts"

# load all modules
. "${scripts_dir}/modules/update_date.sh"
#. "${scripts_dir}/modules/update_battery.sh"
#. "${scripts_dir}/modules/update_volume.sh"
#. "${scripts_dir}/modules/update_cuse.sh"
#. "${scripts_dir}/modules/update_brightness.sh"
#. "${scripts_dir}/modules/update_disk_use.sh"
#. "${scripts_dir}/modules/update_internet_status.sh"
#. "${scripts_dir}/modules/update_weather.sh"

# update every second
while true; do
	# complete status string
	final_string=""	
	#final_string="$final_string$(update_battery)"
	#final_string="$final_string$(update_volume)"
	#final_string="$final_string$(update_cuse)"
	#final_string="$final_string$(update_disk_use)"
	#final_string="$final_string$(update_brightness)"
	#final_string="$final_string$(update_internet_status)"
	#final_string="$final_string$(update_weather)"
	final_string="$final_string$(update_date)"

	# upload status string
	xsetroot -name "$final_string"

	sleep 1
done
