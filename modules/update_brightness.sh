update_brightness () {
	# get brightness level
	brightness_data=$(xbacklight -get)

	# return and format
	printf " %3s" $brightness_data
}

update_brightness
