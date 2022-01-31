#!/usr/bin/env bash

file=selbu.jpg
width=100

while [ ! $# -eq 0 ]
do
  case "$1" in
    *) file=$1
  esac
  shift
done

width=$(identify -format "%[fx:w]" $file)
height=$(identify -format "%[fx:h]" $file)

echo 'file: '$file 'w: '$width 'h: '$height

for (( i = 0; i < $height; i++ )); do

	for (( j = 0; j < $width; j++ )); do

	command='convert '$file' -format "%[hex:p{'$j','$i'}]" info:'
	$command
	echo -n ','
	done
echo
done






