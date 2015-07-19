#! /bin/bash

show_pos() {
	mt -f /dev/nst0 tell
	mt -f /dev/nst0 status |grep File
}

script=$( basename $0 )

if [ "$script" == "show_position.sh" ]; then
	show_pos
fi
