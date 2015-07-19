#! /bin/bash

bin_path=$(dirname ${0})

$bin_path/show_position.sh
tar --test-label -f /dev/nst0
$bin_path/jump_to_beg_of_current_session.sh

