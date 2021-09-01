#!/bin/bash

update_date () {
	# get date in specific format 
	date_string="$(date +"%d-%a.%m-%b.%y %H:%M")"

	# return it
	printf "$date_string"
}

update_date
