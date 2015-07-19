#! /bin/bash

bin_path=$(dirname ${0})

. $bin_path/helpers.sh

show_pos

status="--------tape info...."; echo $status
tapeinfo -f /dev/nst0
status="--------mt status....."; echo $status
mt -f /dev/nst0 status
