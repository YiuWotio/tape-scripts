#! /bin/bash

bin_path=$(dirname ${0})

. $bin_path/helpers.sh

show_pos
prev_block=$block_position

while $(mt -f /dev/nst0 fsf 1); do
	show_pos
	size=$(expr $block_position - $prev_block)
	echo "Session block size: $size"

	prev_block=$block_position
done

show_pos
size=$(expr $block_position - $prev_block)
echo "Session block size: $size"
