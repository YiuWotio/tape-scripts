#! /bin/bash

bin_path=$(dirname ${0})

$bin_path/show_position.sh
mt -f /dev/nst0 fsr 1
$bin_path/show_position.sh
