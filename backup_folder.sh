#! /bin/bash

bin_path=$(dirname ${0})
date=$( date +%Y-%m-%d )
folder="$1"

$bin_path/show_position.sh
tar --label "${date}_${folder}" -cvf /dev/nst0 "$folder"
$bin_path/show_position.sh
