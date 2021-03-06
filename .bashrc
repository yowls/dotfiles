# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# IMPORT SOURCES
#===========================
source "${HOME}/.alias.d/shell"
source "${HOME}/.bash.d/theme1"
# Start Autojump
[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh


# EXPORT VAR [DEPRECATED]
#===============================
export FETCH="${HOME}/MEGA/fetch"


# HISTORY
#===============
# create a bash_history file is doesnt exist
[ ! -f "${HOME}/.cache/bash_history" ] && touch ~/.cache/bash_history
HISTSIZE=1000
HISTFILESIZE=2000
HISTFILE=~/.cache/bash_history
HISTCONTROL=ignoreboth


# OPTIONS
#==================
shopt -s histappend
shopt -s checkwinsize
#shopt -s globstar
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
#force_color_prompt=yes
color_prompt=yes

# Colorize Man Pages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'


# Aliases [DEPRECATED]
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'


# Enable completion 
# you don't need to enable this, if it's already enabled in
# /etc/bash.bashrc and /etc/profile sources /etc/bash.bashrc
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Run Starship prompt
eval "$(starship init bash)"
