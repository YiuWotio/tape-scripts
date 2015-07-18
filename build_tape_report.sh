#! /bin/bash

bin_path=$(dirname ${0})
log_path=$bin_path/log
mkdir -p $log_path

$bin_path/jump_to_beg_of_tape.sh

$bin_path/jump_to_end_of_tape.sh >> $log_path/report.log 2>&1
