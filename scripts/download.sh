#!/usr/bin/env bash

[ ! $1 ] && url='https://www.youtube.com/watch?v=XXYlFuWEuKI' || url="$1"

yt-dlp -i -c \
    -f bestaudio \
    --extract-audio \
    --audio-format mp3 \
    --embed-thumbnail \
    --add-metadata \
    -o "/opt/liquidsoap/music/%(artist)s - %(title)s.%(ext)s" \
    "$url"