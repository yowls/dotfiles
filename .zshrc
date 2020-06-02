# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH=$HOME/bin:/usr/local/bin:$PATH

# - PLUGINS -
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
        zsh-autosuggestions
)

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
ZSH_THEME="powerlevel9k/powerlevel9k"
source $ZSH/oh-my-zsh.sh

#P O W E R L E V E L 9 K !
function sp {
  git branch > /dev/null 2>&1 || return 1
  git config user.initials
}

POWERLEVEL9K_DIR_BACKGROUND='237'
POWERLEVEL9K_CUSTOM_GIT_PAIR="echo \$(sp)"
POWERLEVEL9K_CUSTOM_GIT_PAIR_BACKGROUND="clear"
POWERLEVEL9K_CUSTOM_GIT_PAIR_FOREGROUND="blue"
POWERLEVEL9K_CUSTOM_GIT_PAIR_ICON="\uf7af"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="clear"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="012"
POWERLEVEL9K_DIR_FOREGROUND='010'
POWERLEVEL9K_DIR_HOME_BACKGROUND="clear"
POWERLEVEL9K_DIR_HOME_FOREGROUND="012"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="clear"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="012"
POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{008}/%F{cyan}"

POWERLEVEL9K_DIR_ETC_BACKGROUND="clear"
POWERLEVEL9K_ETC_ICON='%F{blue}\uf423'
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="red"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="clear"

POWERLEVEL9K_GO_ICON="\uf7b7"
POWERLEVEL9K_GO_VERSION_BACKGROUND='clear'
POWERLEVEL9K_GO_VERSION_FOREGROUND='081'

POWERLEVEL9K_HOME_ICON="\uf413"

POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator dir dir_writable_joined custom_git_pair vcs_joined)
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR='%F{008}\uf460%F{008}'

POWERLEVEL9K_CUSTOM_ARCH="echo  "
POWERLEVEL9K_CUSTOM_ARCH_BACKGROUND=000
POWERLEVEL9K_CUSTOM_ARCH_FOREGROUND=069
POWERLEVEL9K_LINUX_MANJARO_ICON="\uf312 "
POWERLEVEL9K_LINUX_UBUNTU_ICON="\uf31b "

POWERLEVEL9K_MODE='FuraCode Nerd Font'

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=" \uf101 "

POWERLEVEL9K_NVM_BACKGROUND='clear'
POWERLEVEL9K_NVM_FOREGROUND='green'

POWERLEVEL9K_OS_ICON_BACKGROUND='clear'
POWERLEVEL9K_OS_ICON_FOREGROUND='cyan'

POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

POWERLEVEL9K_TIME_BACKGROUND="black"
POWERLEVEL9K_TIME_FOREGROUND="white"
POWERLEVEL9K_TIME_FORMAT="\UF64F %D{%I:%M}"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='white'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time status go_version nvm time custom_arch)
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR='%F{008}\uf104%F{008}'

POWERLEVEL9K_SHORTEN_DELIMITER='%F{008} …%F{008}'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY="none"

POWERLEVEL9K_STATUS_ERROR_BACKGROUND="clear"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="001"
POWERLEVEL9K_STATUS_OK_BACKGROUND="clear"
POWERLEVEL9K_STATUS_BACKGROUND="clear"
POWERLEVEL9K_CARRIAGE_RETURN_ICON="\uf071"

POWERLEVEL9K_TIME_FORMAT="%D{%H:%M \uE868  %d.%m}"

POWERLEVEL9K_VCS_CLEAN_BACKGROUND='clear'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='green'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='clear'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='clear'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='green'

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# export MANPATH="/usr/local/man:$MANPATH"

export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# For a full list of active aliases, run `alias`.
#           _      _____           _____
#     /\   | |    |_   _|   /\    / ____|
#    /  \  | |      | |    /  \  | (___
#   / /\ \ | |      | |   / /\ \  \___ \
#  / ____ \| |____ _| |_ / ____ \ ____) |
# /_/    \_\______|_____/_/    \_\_____/

#---- System
# Grub
alias grupdate="sudo grub-mkconfig -o?"
alias gruconf="sudo vim /etc/default/grub"

alias hosts="sudo vim /etc/hosts"
alias rswap="sudo swapoff -a && sudo swapon -a"
alias ram="free -h --mega"

#---- Package manager
# Istall
alias ins="sudo aptitude install"
alias insb="sudo apt -t buster-backports install"
# Update
alias update="sudo aptitude update"
alias upgrade="sudo aptitude upgrade"
alias upgradels="apt list --upgradable -a"
# Nya
alias nya="update && upgradels"
alias nyya="update && upgrade"
# Remove unneeded dependecy
alias autoremove="sudo apt autoremove"
# Remove old downloaded packages
alias autoclean="sudo aptitude autoclean"

# Reset Xresources
alias rxr="xrdb ~/.Xresources"

#---- Aplications
alias lc="colorls --sort-dirs"
alias lca="colorls --sort-dirs -A"
alias lct="colorls --sort-dirs --tree"

#---- Scripts
alias weather="curl wttr.in"

# ADD applications in Applications folder to PATH

#----- Configuration files | dotfiles
#alias todo="vim ~/MEGA/$DISTRIBUTION_NAME"
alias todo="vim ~/MEGA/debian"
alias zconf="vim ~/.zshrc"
alias ohmyconf="vim ~/.oh-my-zsh"
alias xrconf="vim ~/.Xresources"
alias viconf="vim ~/.vimrc"
alias neoconf="vim .config/neofetch/config.conf"

# Working directories
alias cdf="cd ~/.mozilla/firefox/*.default-release/chrome"
alias cdst="cd ~/startpage"
alias cdsc="cd ~/script"
alias cdg="cd ~/git"
# Window manager
alias cdhl="cd ~/.config/herbstluftwm"
alias cdql="cd ~/.config/qtile/"

# Firefox
alias ffd="vim ~/.mozilla/firefox/*.default-release/chrome"
alias fcss="vim ~/.mozilla/firefox/*.default-release/chrome/userChrome.css"
alias fcnt="vim ~/.mozilla/firefox/*.default-release/chrome/userContent.css"

# Qtile
#alias qlfd="vim ~/.config/qtile"
#alias qlconf="vim ~/.config/qtile/.."
#alias qlstart="vim ~/.config/qtile/.."

# Herbstluft
alias hlfd="vim ~/.config/herbstluftwm"
alias hlconf="vim ~/.config/herbstluftwm/autostart"
alias hlstart="vim ~/.config/herbstluftwm/startup"

#Youtube-dl
alias audio="youtube-dl -o $HOME/Desktop/%(title)s.%(ext)s' -f bestaudio -x --audio-format best --audio-quality 0"
alias mp3="youtube-dl -o '$HOME/Desktop/%(title)s.%(ext)s' -x --audio-format mp3 --audio-quality 0"
alias mp3t="youtube-dl -o '$HOME/Desktop/%(title)s.%(ext)s' -x --audio-format mp3 --audio-quality 0 --write-thumbnail"
alias video="youtube-dl -o '$HOME/Desktop/%(title)s.%(ext)s' -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4"

# Update hblock (hosts)
alias uhblock="hblock --backup $HOME/Desktop --sources $HOME/MEGA/dotfiles/hosts --whitelist $HOME/MEGA/dotfiles/whitelist.list"
#^Add blacklist source

# Git
alias glogg="git log --all --graph --decorate --oneline"

# EXTRAS
source $(dirname $(gem which colorls))/tab_complete.sh
