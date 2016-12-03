#!/bin/bash
file="$1"
name="${file%.*}"
ext="${file##*.}"
ffmpeg -i "$file" -vf scale=-1:${2} "$name"_resized.${ext}
