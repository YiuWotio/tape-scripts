#! /bin/bash

bin_path=$(dirname ${0})

$bin_path/show_position.sh

while $(mt -f /dev/nst0 fsf 1); do
	$bin_path/show_position.sh
done

$bin_path/show_position.sh
