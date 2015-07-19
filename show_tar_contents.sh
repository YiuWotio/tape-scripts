#! /bin/bash

bin_path=$(dirname ${0})

. $bin_path/helpers.sh

show_pos
tar tvf /dev/nst0
show_pos
mt -f /dev/nst0 fsf 1
show_pos
