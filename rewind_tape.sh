#! /bin/bash

bin_path=$(dirname ${0})

. $bin_path/helpers.sh

status="Rewinding..."

show_pos
echo $status
mt -f /dev/nst0 rewind
show_pos
