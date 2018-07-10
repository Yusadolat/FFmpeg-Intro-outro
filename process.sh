#scale DN intro

ffmpeg -i intro.mp3 -qscale:v 1 intro1.mp3

#scale lecture

ffmpeg -i lecture.mp3 -qscale:v 1 lecture1.mp3
#scale outro

ffmpeg -i outro.mp3 -qscale:v 1 outro1.mp3

#concatenate lecture with intro and outro

cat intro1.mp3  lecture1.mp3 outro1.mp3 > merge_all.mp3

#scale final mp3 to v 2
ffmpeg -i merge_all.mp3 -qscale:v 2 output.mp3

