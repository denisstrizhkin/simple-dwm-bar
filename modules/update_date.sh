scripts_dir="/home/denis/.local/bin/DWM_Scripts"

function date_update {
	date_string="$( date +"%d(%A).%m(%B).%y|%H:%M") "
	echo $date_string | tee ./savedata/date_string.txt
	"./update_all.sh"
}

date_update
