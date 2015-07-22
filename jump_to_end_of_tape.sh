#! /bin/bash

bin_path=$(dirname ${0})

. $bin_path/helpers.sh

session_label=$( $bin_path/show_session_label.sh )
show_pos

prev_block=$block_position
while $(mt -f /dev/nst0 fsf 1); do
	echo $tell_result
	echo $status_result

	show_pos
	size=$(expr $block_position - $prev_block)

	echo "Session block size: $size"
	echo "Session label: $session_label"

	session_label=$( $bin_path/show_session_label.sh )

	prev_block=$block_position
done

show_pos
size=$(expr $block_position - $prev_block)

echo "Session block size: $size"
echo $tell_result
echo $status_result

