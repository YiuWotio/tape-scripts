#! /bin/bash

while getopts ":s:d:" opt; do
	case $opt in
		s)
			echo $OPTARG
			S=$OPTARG
			;;
		d)
			D=$OPTARG
			;;
		:)
   			echo "Option -$OPTARG requires an argument." >&2
   			exit 1
			;;
	esac
done
