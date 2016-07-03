#!/bin/bash
for i in *.m4a; do
    avconv -i "$i" -vn -acodec libmp3lame -ac 2 -ab 320k -ar 48000 "`basename "$i" .m4a`.mp3"
done
