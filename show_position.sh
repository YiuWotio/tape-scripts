#! /bin/bash

show_pos() {
	if [ "$D" == 1 ]; then
		mt -f /dev/nst0 tell
		mt -f /dev/nst0 status |grep File
	fi
}

script=$( basename $0 )

if [ "$script" == "show_position.sh" ]; then
	D=1 show_pos
fi
