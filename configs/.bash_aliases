#EDIT ~/.bashrc
#add: . ~/.bash_aliases

#APT-GET shortcuts
alias agi='sudo apt-get install'
alias agr='sudo apt-get --purge remove'
alias agu='sudo apt-get update'
alias agr='sudo add-apt-repository '
alias acs='apt-cache search'
alias acsh='apt-cache show'

#FILE/DIR shortcuts
#confirm & more opt
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -i'
alias la='ls -alh'

#SYSTEM INFO
alias info='clear && screenfetch'

#DISK INFO
#DU - disk files/folders
#DF - disk partition
#human readable
alias du="du -h --max-depth=1"
alias df="df -h"

#FILE EXPLORER
#Current dir
alias exp='thunar .'
alias suexp='sudo thunar .'

# LIVESTREAMER (TWITCH)
alias twitch='~/./Scripts/livestreamer_run.sh'


### MOVE AROUND FS

## Moving around & all that jazz
alias back='cd $OLDPWD'
alias ..="cd .."
alias ...="cd ../.."

## Makes directory then moves into it
function mkcdr {
    mkdir -p -v $1
    cd $1
}

# sudo
alias s='sudo '

# MOUSEPAD simple edit
alias mp='mousepad'

#TMUX-TMUXINATOR
alias tmuxN='tmux new -s '
alias tmuxK='tmux kill-session -t '
alias tmuxA='tmux attach -t '

#ALIAS
alias a='echo "------------List of aliases------------";alias'
#reload bashrc
alias bashreload='source ~/.bashrc'
#Edit Aliases
alias bashalias='vim ~/.bash_aliases'

#BACKUP VIM/TMUX/BASHRC
alias backup='cp ~/.vimrc ~/Dropbox/Configs/vim/ && cp ~/.bashrc ~/Dropbox/Configs/ && cp ~/.bash_aliases ~/Dropbox/Configs/ && cp ~/.tmux.conf ~/Dropbox/Configs/'

#LOCALSERVER
#xdg-open = default x app
alias server='xdg-open http://localhost:8000 && python -m SimpleHTTPServer'
alias xampp='xdg-open http://localhost/TEST/ && gksu /opt/lampp/share/xampp-control-panel/xampp-control-panel'
alias xamppt='cd /opt/lampp/htdocs/TEST'
alias mysql='/opt/lampp/bin/mysql -u root -p'
