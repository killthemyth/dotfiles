# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export TERM=xterm-256color

# Path to your oh-my-zsh installation.
export ZSH=/home/kkeshri/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

POWERLEVEL9K_MODE='awesome-patched'
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  docker
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# EXPORT VARIABLE
export PAGER="most"

# Powerlevel theme configuration, Install powerline fonts and Awesome Patched font
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status ssh time)

POWERLEVEL9K_OS_ICON_BACKGROUND="white"
POWERLEVEL9K_OS_ICON_FOREGROUND="blue"
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"

# Install aliasing
alias install="sudo apt-get install"
alias update="sudo apt-get update"

# Subtitle downloader
alias subquick="python /home/kkeshri/Extra/subtitle-downloader/subtitles.py ./ "
alias subslow="subliminal download -l en "

if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec ~/.tmux/mytmux.sh
fi

# tmux configuration
alias ntmux="~/.tmux/mytmux.sh"
alias atmux="tmux a"
alias stmux="tmux list-session"
alias wtmux="tmux list-window"

# CISCO VPN
alias vpn='/opt/cisco/anyconnect/bin/vpn'
alias vpnui='/opt/cisco/anyconnect/bin/vpnui'
alias noida_hostname=' asa-noida-1.adobe.com '
alias ubuntu-office='ssh kkeshri@10.41.51.121'

# Opening file.txt without writing vim
alias -s txt=vim
alias -s conf=vim

# Poweroff aliasing
alias restartme="sudo shutdown -r now"
alias hibernateme="systemctl suspend" 
alias logoutme="gnome-session-quit"

# Window navgiation & other aliasing
alias down="cd ~/Downloads"
alias home="cd ~"
alias maas="cd ~/Documents/maasv2/maas/"
alias toproject="cd ~/Documents/maasv2/"
alias szshrc="source ~/.zshrc"
alias dotfiles="cd ~/Extra/dotfiles"
alias znotes='cd /home/kkeshri/Documents/maasv2/documents/notes'

# Command aliasing
alias ps="ps -aux"
alias psg="ps -aux | grep "

alias repoupdate="git fetch upstream && git merge upstream/master master && git rebase upstream/master"
alias youtube="youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4'"
alias synergy-server="/home/kkeshri/Extra/synergy-core/build/bin/synergy-core --server --config /home/kkeshri/Extra/synergy-core/build/bin/synergy.conf"
alias synergyclient="cd /home/kkeshri/Extra/synergy-core/build/bin && ./synergy-core --client 10.41.120.182 &"

# docker aliasing

alias zdockps='docker ps --format "table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Names}}"'
alias zdockpsa='docker ps -a --format "table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Names}}"'
alias zdockrmallexitedcontainer='docker rm $(docker ps -a -f status=exited -q)'

alias zmongodb='mongo -u "user_local" -p "user_passwd" 10.41.120.182  --authenticationDatabase "admin"'
alias zpublicip='dig +short myip.opendns.com @resolver1.opendns.com'

# size of all recursive directory - top 10
alias zdirsize='du -hsx * | sort -rh | head -10'


# Azure configuration
alias zsshzk='ssh maasdev@104.209.172.255'
alias zsshkafka='ssh maasdev@104.209.145.203'
alias zsshmonitoring='ssh maasdev@104.208.142.249'
alias zsshmongo='ssh maas-dev@104.209.156.10'


# home configuration for NAS
alias anussh='ssh anu@192.168.0.105'

# adding /opt in path for vault
export PATH=/opt:$PATH
