scripts_dir="/home/denis/.local/bin/DWM_Scripts"

function date_update {
	date_string="$( date +"%B %-d,%Y|%-I:%M%p") "
	echo $date_string | tee ${scripts_dir}/savedata/date_string.txt
	"${scripts_dir}/update_all.sh"
}

date_update
