# Enable Powerlevel10k instant prompt. Should stay close to the top
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

# Import sources
source "$HOME/.alias.d/shell"
[ -n $DISTRO ] && source "${HOME}/.alias.d/${DISTRO}"

# Export variables
export FETCH="$HOME/MEGA/fetch" #[DEPRECATED]


# Oh My ZSH: PLUGINS
#========================
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/

# [CHANGE]
plugins=(
	wd
        git
	fzf
        autojump
	zsh-autoenv
	zsh-completions
	zsh-autocomplete
	zsh-history-substring-search
)


# Oh My ZSH: THEME
#========================
# Standard themes can be found in ~/.oh-my-zsh/themes/*
# Custom themes may be added to ~/.oh-my-zsh/custom/themes/

ZSH_THEME="powerlevel10k/powerlevel10k"

#ZSH_THEME="random"
#ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

source "$HOME/.oh-my-zsh/oh-my-zsh.sh"


# OPTIONS
setopt correct		# Enable auto-correction.
#setopt autocd		# Automatically cd into typed directory.

# HISTORY
HISTSIZE=3000
SAVEHIST=3000
HISTFILE=~/.cache/zsh_history

# Colorize Man Pages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'


# ZSH PLUGINS
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Run Starship prompt
#eval "$(starship init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
