
#I added extra ..mp3 to the output file because FFmpeg cannot Overrite input file.

find . -type f -name "*.mp3" -exec bash -c 'ffmpeg -i "$1" -qscale:v 1 "${1%.mp3}.mp3.mp3"' _ {} \;