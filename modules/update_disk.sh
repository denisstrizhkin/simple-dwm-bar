function update_disk {
	# get disk used percent
	disk_used=$(df -h | grep /$ | awk '{print $5}')

	# format and return
	printf "D:%4s" $disk_used
}

update_disk
