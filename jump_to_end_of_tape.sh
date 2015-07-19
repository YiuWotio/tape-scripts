#! /bin/bash

bin_path=$(dirname ${0})

. $bin_path/helpers.sh

show_pos

while $(mt -f /dev/nst0 fsf 1); do
	show_pos
done

show_pos
