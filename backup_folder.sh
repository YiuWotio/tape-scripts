#! /bin/bash

bin_path=$(dirname ${0})
folder="$1"

$bin_path/show_position.sh
tar cvf /dev/nst0 "$folder"
$bin_path/show_position.sh
