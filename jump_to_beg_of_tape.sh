#! /bin/bash

status="$1"
bin_path=$(dirname ${0})

$bin_path/show_position.sh

while $(mt -f /dev/nst0 bsf 1); do
	echo "$status"
	$bin_path/show_position.sh
done

$bin_path/show_position.sh
