#! /bin/bash

folder="$1"

./show_position.sh
tar cvf /dev/nst0 "$folder"
./show_position.sh
