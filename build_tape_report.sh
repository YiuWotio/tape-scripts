#! /bin/bash

date=$( date +%Y-%m-%d-%H-%M )

bin_path=$(dirname ${0})
log_path=$bin_path/log
mkdir -p $log_path

echo Rewinding....
$bin_path/jump_to_beg_of_tape.sh

echo Generating Report onto $log_path/report_$date.log 
$bin_path/jump_to_end_of_tape.sh >> $log_path/report_$date.log 2>&1
