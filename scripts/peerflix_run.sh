# CHMOD EXECUTABLE
#chmod +x naziv_skripte.sh

clear

# ECHO
echo "=====| PEERFLIX STARTED |======"

# copy from clipboard to var
URL=$(xclip -selection clipboard -o)

# Start livestream with url
peerflix "$URL" --vlc -c 50
