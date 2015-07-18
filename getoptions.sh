#! /bin/bash

while getopts ":d:" opt; do
	case $opt in
		d)
			D=$OPTARG
			;;
		:)
   			echo "Option -$OPTARG requires an argument." >&2
   			exit 1
			;;
	esac
done
