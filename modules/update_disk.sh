function update_disk {
	# get disk used percent
	disk_used=$(df | grep /$ | awk '{print $3/($3+$4)*100}')

	# format and return
	printf " %3.0f" $disk_used
}

update_disk
