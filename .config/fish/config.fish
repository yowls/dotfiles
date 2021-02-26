#     __ _     _           _          _ _ 
#    / _(_)___| |__    ___| |__   ___| | |
#   | |_| / __| '_ \  / __| '_ \ / _ \ | |
#   |  _| \__ \ | | | \__ \ | | |  __/ | |
#   |_| |_|___/_| |_| |___/_| |_|\___|_|_|

# IMPORT SOURCES
#-------------------
source $HOME/.alias.d/shell
[ -n $DISTRO ] && source "$HOME/.alias.d/$DISTRO"
#source $HOME/.config/fish/functions.fish

# EXPORT VARIABLES
#-------------------
#export FETCH="$HOME/MEGA/fetch" #[DEPRECATED]

# OPTIONS
#-------------------
set fish_greeting

# Colorize Man Pages
set -x LESS_TERMCAP_mb (printf "\033[01;31m")  
set -x LESS_TERMCAP_md (printf "\033[01;31m")  
set -x LESS_TERMCAP_me (printf "\033[0m")  
set -x LESS_TERMCAP_se (printf "\033[0m")  
set -x LESS_TERMCAP_so (printf "\033[01;44;33m")  
set -x LESS_TERMCAP_ue (printf "\033[0m")  
set -x LESS_TERMCAP_us (printf "\033[01;32m")

# fallback Theme
set fish_color_normal brcyan
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brcyan
set fish_color_error '#ff6c6b'
set fish_color_param brcyan


#------------------------#
# DIVERGENCE IN OPENSUSE #
#------------------------#
if test "$DISTRO" = "osuse"
	# Run starship prompt
	starship init fish | source
end

#--------------------#
# DIVERGENCE IN VOID #
#--------------------#
if test "$DISTRO" = "void"
	# Gnome keyring
	if test -n "$DESKTOP_SESSION"
		set -x (gnome-keyring-daemon --start | string split "=")
	end
	# Run starship prompt
	#starship init fish | source
end
