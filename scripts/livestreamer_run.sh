# CHMOD EXECUTABLE
#chmod +x naziv_skripte.sh

# ECHO
echo "=====| LIVESTREAMER STARTED |======"

# copy from clipboard to var
URL=$(xclip -selection clipboard -o)

# Start livestream with url
livestreamer $URL high
