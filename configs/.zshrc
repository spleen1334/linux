# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#
# Dobre theme:
# avit, bira, norm
ZSH_THEME="avit"

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git, colorize, command-not-found, zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/opt/lampp/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

################
#  RUN         #
################

# AUTORUN
screenfetch

# $EDITOR
echo "export EDITOR=/usr/bin/vim" >> ~/.zshrc

# Tmuxinator
export EDITOR=vim

# Use less command as a pager /za man color/
export PAGER="/usr/bin/most -s"

################
# ALIAS CUSTOM #
################

#EDIT ~/.zshrc

#APT-GET shortcuts
alias agi='sudo apt-get install'
alias agd='sudo apt-get --purge remove'
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
alias exp='nautilus .'
alias suexp='sudo nautilus .'

# LIVESTREAMER (TWITCH)
alias twitch='~/./Scripts/livestreamer_run.sh'
alias pflix='~/./Scripts/peerflix_run.sh'

# RUBY/RAILS
alias be='bundle exec '


### MOVE AROUND FS

## Makes directory then moves into it
function mkcdr {
    mkdir -p -v $1
    cd $1
}

# sudo
alias s='sudo '

# MOUSEPAD simple edit
alias ge='gedit'

#TMUX-TMUXINATOR
alias tmuxN='tmux new -s '
alias tmuxK='tmux kill-session -t '
alias tmuxA='tmux attach -t '

# TMUX COLOR FIX
export TERM=xterm-256color

#ALIAS
alias a='echo "------------List of aliases------------";alias'
#reload zshrc
alias zshreload='source ~/.zshrc'
#Edit Aliases
alias zshconfig='vim ~/.zshrc'

#BACKUP VIM/TMUX/BASHRC
alias backup='cp ~/.vimrc ~/Dropbox/Configs/vim/ && cp ~/.bashrc ~/Dropbox/Configs/ && cp ~/.bash_aliases ~/Dropbox/Configs/ && cp ~/.tmux.conf ~/Dropbox/Configs/ && cp ~/.zshrc ~/Dropbox/Configs/'

#LOCALSERVER
#xdg-open = default x app
alias server='xdg-open http://localhost:8000 && python -m SimpleHTTPServer'
alias xampp='xdg-open http://localhost/TEST/ && gksu /opt/lampp/share/xampp-control-panel/xampp-control-panel'
alias xamppt='cd /opt/lampp/htdocs/TEST'
alias mysql='/opt/lampp/bin/mysql -u root -p'

# D3GO/HBO
alias d3go="rm -rf ~/.wine-pipelight/*; rm -rf ~/.wine-pipelight/./.*; cp -a ~/viewright_backup/. ~/.wine-pipelight/"


export EDITOR=/usr/bin/vim

