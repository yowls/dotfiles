# Import sources
source $HOME/.alias.d/shell
[ -n $DISTRO ] && source "$HOME/.alias.d/$DISTRO"
#source $HOME/.config/fish/functions.fish

# Export variables
#export FETCH="$HOME/MEGA/fetch" #[DEPRECATED]

# Gnome keyring
if test -n "$DESKTOP_SESSION"
    set -x (gnome-keyring-daemon --start | string split "=")
end

# Theme
set fish_color_normal brcyan
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brcyan
set fish_color_error '#ff6c6b'
set fish_color_param brcyan

# Options
set fish_greeting

# Colorize Man Pages
set -x LESS_TERMCAP_mb (printf "\033[01;31m")  
set -x LESS_TERMCAP_md (printf "\033[01;31m")  
set -x LESS_TERMCAP_me (printf "\033[0m")  
set -x LESS_TERMCAP_se (printf "\033[0m")  
set -x LESS_TERMCAP_so (printf "\033[01;44;33m")  
set -x LESS_TERMCAP_ue (printf "\033[0m")  
set -x LESS_TERMCAP_us (printf "\033[01;32m")
