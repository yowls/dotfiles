# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Import sources
source "$HOME/.alias"

# Export variables
export FETCH="$HOME/MEGA/fetch"
export ZSH="$HOME/.oh-my-zsh"

# Oh My ZSH: PLUGINS
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
        zsh-autosuggestions
        zsh-syntax-highlighting
        git
        autojump
)

# Oh My ZSH: THEME
# Standard themes can be found in ~/.oh-my-zsh/themes/*
# Custom themes may be added to ~/.oh-my-zsh/custom/themes/
ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="random"
#ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
source $ZSH/oh-my-zsh.sh

# Options
setopt correct		# Enable auto-correction.
#setopt autocd		# Automatically cd into typed directory.

# History
HISTSIZE=3000
SAVEHIST=3000
HISTFILE=~/.cache/zsh_history

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
