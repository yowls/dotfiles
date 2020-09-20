# Export variables

# Options
setopt correct		# Enable auto-correction.
setopt autocd		# Automatically cd into typed directory.
autoload -U compinit
compinit

# History
HISTSIZE=3000
SAVEHIST=3000
HISTFILE=~/.cache/zsh_history

# Theme
autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Alias
alias grupdate="grub-mkconfig -o /boot/grub/grub.cfg"
alias gruconf="nvim /etc/deault/grub"
alias rswap="swapoff -a && sudo swapon -a"
alias lsbok="lsblk -o name,mountpoint,label,size,uuid"
alias zconf="nvim ~/.zshrc"
alias nvconf="nvim ~/.config/nvim/init.vim"
# Upgrade Man-page with colors
function man() {
    env \
    LESS_TERMCAP_mb=$'\e[01;31m'	\
    LESS_TERMCAP_md=$'\e[01;31m'	\
    LESS_TERMCAP_me=$'\e[0m'		\
    LESS_TERMCAP_se=$'\e[0m'		\
    LESS_TERMCAP_so=$'\e[01;44;33m'	\
    LESS_TERMCAP_ue=$'\e[0m'		\
    LESS_TERMCAP_us=$'\e[01;32m'	\
    man "$@"
}
alias ls="ls -hN --color=auto --group-directories-first"
alias la="ls -a"
alias ll="ls -la"
alias l="ls -l"
alias vi=nvim
alias vim=nvim
