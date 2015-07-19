#! /bin/bash

bin_path=$(dirname ${0})

. $bin_path/helpers.sh

status="$S"

show_pos

while $(mt -f /dev/nst0 bsf 1); do
	echo "$status"
	show_pos
done

show_pos
