#!/bin/bash
ffmpeg -y -loglevel warning  \
	-f alsa -i pulse -f alsa -i pulse \
	-filter_complex amix \
	-acodec mp3 -async 20 -ac 1 -ar 44100 \
	-threads 2 -strict -2 \
	-f mp3 "$1"
