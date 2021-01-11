#!/bin/bash

mkdir -p png

for file in `ls`
do
	if [[ "$file" == *.svg* ]]; then
		convert -background none -density 1000 -resize 300x300 $file png/$file.png
		convert -background none -density 1000 -resize 300x300 -gravity center -composite bg.png png/$file.png png/$file.png
	fi
done
