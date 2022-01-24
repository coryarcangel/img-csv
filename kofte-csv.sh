#!/usr/bin/env bash

file=selbu.jpg
width=100

while [ ! $# -eq 0 ]
do
  case "$1" in
    -f) file=$2
            ;;
    -w) width=$2
            ;;
    -h) height=$2
            ;;
    *) file=$1
  esac
  shift
done

# echo 'file: '$file 'w: '$width 'h: '$height

for (( i = 0; i < $height; i++ )); do

	for (( j = 0; j < $width; j++ )); do

	command='convert '$file' -format "%[hex:p{'$j','$i'}]" info:'
	$command
	echo -n ','
	done
echo
done






