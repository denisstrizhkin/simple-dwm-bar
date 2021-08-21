#update xsetroot function

scripts_dir="/home/denis/.local/bin/DWM_Scripts"

function run_update {
    date_string="$(cat ${scripts_dir}/savedata/date_string.txt)"
	volume_string="$(cat ${scripts_dir}/savedata/volume_string.txt)"
	battery_string="$(cat ${scripts_dir}/savedata/battery_string.txt)"
	internet_status_string="$(cat ${scripts_dir}/savedata/internet_status_string.txt)"
	bright_string="$(cat ${scripts_dir}/savedata/brightness_string.txt)"
	weather_string="$(cat ${scripts_dir}/savedata/weather_string.txt)"
	disk_use_string="$(cat ${scripts_dir}/savedata/disk_use_string.txt)"
	#cpu_string="$(cat ${scripts_dir}/savedata/cpu_string.txt)"
	final_string="$weather_string|$disk_use_string|$internet_status_string|$volume_string|$battery_string|$bright_string|$date_string"
	compare_string="$(cat ${scripts_dir}/savedata/final_string.txt)"
	#only update the gui when a new string is made
	if [ "$final_string" = "$compare_string" ]; then
		#debug
		#echo "no up" | tee ${scripts_dir}/savedata/up_no.txt
		exit 0
	else
		xsetroot -name "$final_string"
     	echo $final_string | tee ${scripts_dir}/savedata/final_string.txt
		#echo "up" | tee ${scripts_dir}/savedata/up_no.txt
	fi
}

run_update
