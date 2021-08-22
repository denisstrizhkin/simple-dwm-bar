function update_weather {
	# location for weather
	place="Saint-Petersburg"

	# get temperature for specified location
	temp=$(curl -s wttr.in/$place?format=%t)

	# format and return
	printf "%5s" $temp	
}

update_weather
