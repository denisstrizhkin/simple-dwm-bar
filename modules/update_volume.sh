function update_volume {
	# get volume level
	volume=$(pulsemixer --get-volume | awk '{print $1}')

	# format and return
	printf " %3s" $volume
}

update_volume
