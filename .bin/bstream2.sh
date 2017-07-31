picartoKey=$(cat ~/.picarto_key)
outputFile="$1"
case $1 in
  picarto)
    outputFile="rtmp://live.us.picarto.tv/golive/$picartoKey"
esac

ffmpeg -y -loglevel warning -f x11grab -s 1920x1080 -r 20 -i :0.0+1920x0 \
  -f alsa -i pulse -f alsa -i pulse \
  -filter_complex amix \
  -vcodec libx264 -b:v 600k -g 40 -keyint_min 20 -pix_fmt yuv420p \
  -acodec aac -async 20 -ac 1 -ar 44100 \
  -threads 4 -strict -2 -preset veryfast -f flv $outputFile
