#! /bin/bash

status="$1"
bin_path=$(dirname ${0})

. $bin_path/helpers.sh

show_pos

while $(mt -f /dev/nst0 bsf 1); do
	echo "$status"
	show_pos
done

show_pos
