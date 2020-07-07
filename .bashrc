#  /|                               .
#  ||                             .'|
#  ||                            <  |
#  ||  __        __               | |
#  ||/'__ '.  .:--.'.         _   | | .'''-.
#  |:/`  '. '/ |   \ |      .' |  | |/.'''. \
#  ||     | |`" __ | |     .   | /|  /    | |
#  ||\    / ' .'.''| |   .'.'| |//| |     | |
#  |/\'..' / / /   | |_.'.'.-'  / | |     | |
#  '  `'-'`  \ \._,\ '/.'   \_.'  | '.    | '.
#             `--'  `"            '---'   '---'

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Import sources
source "$HOME/.zsh/alias"	# zsh alias
source $(dirname $(gem which colorls))/tab_complete.sh
#source "$HOME/.bash/theme1"

# Export var
export EDITOR='vim'
export FETCH="$HOME/MEGA/fetch"

# append to the history file, don't overwrite it
shopt -s histappend

# History
HISTSIZE=1000
HISTFILESIZE=2000
HISTFILE=~/.cache/bash_history
HISTCONTROL=ignoreboth

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

#force_color_prompt=yes
color_prompt=yes

# Prompt
PS1="\[\e[36m\][\[\e[m\]\[\e[33m\]\u\[\e[m\]\[\e[34m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\]\[\e[35m\]\w\[\e[m\]\[\e[36m\]]\[\e[m\]  "


# Aliases
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


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
