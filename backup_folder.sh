#! /bin/bash

if [ -z "$1" ]; then
	echo missing argument
	exit
fi

# add code to jump to end before writing
# add code to run backup in current position
# generate reports with session info (tar file list catalog name, tape pos, block)

bin_path=$(dirname ${0})
timestamp=$( date +%Y-%m-%d-%H-%M )
folder="$1"

. $bin_path/helpers.sh

show_pos
$bin_path/jump_to_end_of_tape.sh

show_pos
tar --label "${timestamp}_${folder}" -cvf /dev/nst0 "$folder"
show_pos
