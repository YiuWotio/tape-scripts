#! /bin/bash

if [ -z "$1" ]; then
	echo missing argument
	exit
fi

# add code to jump to end before writing
# add code to run backup in current position

bin_path=$(dirname ${0})
date=$( date +%Y-%m-%d )
folder="$1"

. $bin_path/helpers.sh

show_pos
$bin_path/jump_to_end_of_tape.sh

show_pos
tar --label "${date}_${folder}" -cvf /dev/nst0 "$folder"
show_pos
