#! /bin/bash

bin_path=$(dirname ${0})

. $bin_path/helpers.sh

show_pos
tar --test-label -f /dev/nst0
$bin_path/jump_to_beg_of_current_session.sh

