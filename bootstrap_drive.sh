#! /bin/bash

bin_path=$(dirname ${0})

. $bin_path/helpers.sh

show_pos
echo $status

$bin_path/fix_error.sh
$bin_path/rewind_tape.sh

show_pos
echo $status
