function update_battery {
	# get battery percentage
	bat_level=$(cat /sys/class/power_supply/BAT1/capacity)

	# format and return
	printf " %3s" $bat_level
}

update_battery
