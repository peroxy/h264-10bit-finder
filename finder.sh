#!/bin/bash

if [ -z "$1" ]
  then
    echo "No directory argument supplied"
    exit 1
fi

if ! command -v mediainfo &> /dev/null
then
    echo "mediainfo could not be found, please install"
    exit 1
fi


dir=$1

for video in $(find $dir -type f | grep -E "\.webm$|\.flv$|\.vob$|\.ogg$|\.ogv$|\.drc$|\.gifv$|\.mng$|\.avi$|\.mov$|\.qt$|\.wmv$|\.yuv$|\.rm$|\.rmvb$|/.asf$|\.amv$|\.mp4$|\.m4v$|\.mp*$|\.m?v$|\.svi$|\.3gp$|\.flv$|\.f4v$|\.mkv$"); do
  if mediainfo $video | grep -v AVC | grep -q '10 bits'; then
    echo $video
  fi
done
