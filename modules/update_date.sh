#!/bin/bash

update_date () {
	# get date in specific format 
	date_string="$(date +"%d(%A)-%m(%B)-%y %H:%M")"
	
	# return it
	printf "$date_string"
}

update_date
