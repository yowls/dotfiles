# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# - PLUGINS -
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
	git
        zsh-autosuggestions
)

# THEME
ZSH_THEME="powerlevel10k/powerlevel10k"
source $ZSH/oh-my-zsh.sh

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# export MANPATH="/usr/local/man:$MANPATH" ??

export EDITOR='vim'


# For a full list of active aliases, run `alias`.
#           _      _____           _____
#     /\   | |    |_   _|   /\    / ____|
#    /  \  | |      | |    /  \  | (___
#   / /\ \ | |      | |   / /\ \  \___ \
#  / ____ \| |____ _| |_ / ____ \ ____) |
# /_/    \_\______|_____/_/    \_\_____/

#---- System
# Grub
alias grupdate="sudo grub-mkconfig -o /boot/grub/grub.cfg?"
alias gruconf="sudo vim /etc/deault/grub"
# Processes
#alias p="ps aux | grep"
alias p="ps -el | grep"
alias pk="pkill"

alias hosts="sudo vim /etc/hosts"
alias rswap="sudo swapoff -a && sudo swapon -a"
alias ram="free -h --mega"

#---- Package manager
# Search
#alias search="insert"
# Istall
#alias ins="insert"
# Remove
#alias remv="insert"
#alias fremv="insert"
# Update
#alias update="insert"
#alias upgrade="insert"
#alias upgradels="insert"
# Nya = Nya You All
#alias nya="update && upgradels"
#alias nyya="update && upgrade"
# Remove unneeded dependecy
#alias autoremove="insert"
# Remove old downloaded packages
#alias autoclean="insert"

# Reset Xresources
alias rxr="xrdb ~/.Xresources"

#---- Aplications
alias lc="colorls --sort-dirs"
alias lca="colorls --sort-dirs -A"
alias lct="colorls --sort-dirs --tree"

#---- Scripts
alias wttr="curl wttr.in"
# ADD applications in bin folder to PATH

#----- Configuration files | dotfiles
#alias todo="vim ~/MEGA/$DISTRIBUTION_NAME"
alias todo="vim ~/MEGA/debian"
alias zconf="vim ~/.zshrc"
alias bconf="vim ~/.bashrc"
alias ohmyconf="vim ~/.oh-my-zsh"
alias viconf="vim ~/.vimrc"
alias xrconf="vim ~/.Xresources"
alias neoconf="vim .config/neofetch/config.conf"

# Working directories
alias cdf="cd ~/.mozilla/firefox/*.default-release/chrome"
alias cdst="cd ~/startpage"
alias cdsc="cd ~/script"
alias cdg="cd ~/git"
alias rmd="vim README.md"
# Window manager
alias cdhl="cd ~/.config/herbstluftwm"
alias cdql="cd ~/.config/qtile/"

# Firefox
alias ffd="vim ~/.mozilla/firefox/*.default-release/chrome"
alias fcss="vim ~/.mozilla/firefox/*.default-release/chrome/userChrome.css"
alias fcnt="vim ~/.mozilla/firefox/*.default-release/chrome/userContent.css"

# Origin
alias omd="vim ~/README.md"
alias ostart="vim ~/.xsessionrc"
alias cdgo="cd ~/git/MYDFILES"

# Plasma
alias plstart="vim ~/.config/autostart-scripts"
alias plout="vim ~/.config/plasma-workspace/shutdown"

# Qtile
alias qlfd="vim ~/.config/qtile"
alias qlconf="vim ~/.config/qtile/config.py"
alias qlkey="vim ~/.config/qtile/keybind.py"
alias qlmd="vim ~/.config/qtile/README.md"

# Herbstluft
alias hlfd="vim ~/.config/herbstluftwm"
alias hlconf="vim ~/.config/herbstluftwm/autostart"
alias hlkey="vim ~/.config/herbstluftwm/keybind.sh"
alias hlmd="vim ~/.config/herbstluftwm/README.md"

#Youtube-dl
alias audio="youtube-dl -o $HOME/Desktop/%(title)s.%(ext)s' -f bestaudio -x --audio-format best --audio-quality 0"
alias mp3="youtube-dl -o '$HOME/Desktop/%(title)s.%(ext)s' -x --audio-format mp3 --audio-quality 0"
alias mp3t="youtube-dl -o '$HOME/Desktop/%(title)s.%(ext)s' -x --audio-format mp3 --audio-quality 0 --write-thumbnail"
alias video="youtube-dl -o '$HOME/Desktop/%(title)s.%(ext)s' -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4"

# Update hblock (hosts)
alias uhblock="hblock --backup $HOME/Desktop --sources $HOME/MEGA/hblock/hosts --whitelist $HOME/MEGA/hblock/whitelist.list --blacklist $HOME/MEGA/hblock/blacklist.list"

# Git
# gst= git status
# +more default alias
alias glogg="git log --all --graph --decorate --oneline"
alias ignore="vim ~/.gitignore"

# EXTRAS
source $(dirname $(gem which colorls))/tab_complete.sh

# Error fixing
# tere=tree

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
