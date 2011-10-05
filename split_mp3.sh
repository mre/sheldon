#!/bin/bash

# Split an MP3 file into equally sized chunks. Great for burning Mixtapes
# Usage: ./split_mp3.sh filename.mp3 [chunksize]

# Source:
# http://hints.macworld.com/article.php?story=20020729090411989

. shelper-lib.sh

if [[ -z "$1" ]]
then
  echo "Usage: ./split_mp3.sh filename.mp3 [chunksize]"
  exit
fi

if [[ -z "$2" ]]
then
  chunk_size="500k"
else
  chunk_size="$2"
fi

filename=$( basename "$1" )

split -b $chunk_size "$1" SPLIT_"$filename"; ls SPLIT_"$filename"* | sed "s/.*/mv '&' '&.mp3'/g" | zsh
