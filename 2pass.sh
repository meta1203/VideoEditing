#!/bin/bash
file="$1"
name="${file%.*}"

size=$2
length=`ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$file"`
bitrate=`echo "${size}*8192/${length}-128" | bc`
bitrate=$bitrate"k"

ffmpeg -y -i "$file" -c:v libx264 -preset medium -b:v $bitrate -pass 1 -an -f mp4 /dev/null && \
ffmpeg -i "$file" -c:v libx264 -preset medium -b:v $bitrate -pass 2 -b:a 128k "$name"_2pass.mp4

rm -fr ffmpeg2pass*
