#!/bin/bash

ffmpeg -i $1.mp3 -loop 1 -framerate 10 -i $1.png -map 1:v -map 0:a -c:a copy -movflags +faststart -shortest $1.mp4
