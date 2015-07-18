#! /bin/bash

show_pos() {
	status_result=$(mt -f /dev/nst0 status |grep File)
	tell_result=$(mt -f /dev/nst0 tell)
	block_position=$( echo $tell_result | sed -e 's/^At block\ \(.*\).$/\1/' )
	if [ "$D" == 1 ]; then
		echo $tell_result
		echo $status_result
	fi
}

script=$( basename $0 )

if [ "$script" == "show_position.sh" ]; then
	D=1 show_pos
fi
