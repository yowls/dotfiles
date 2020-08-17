#!/usr/bin/env bash

# Run, if it´s not running
function run {
	if ! pgrep $1 ;
	then
		$@&
	fi
}

# -- PolicyKit | Polkit
run /usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1
# -- Compositor
run compton
# -- Status bar
# built-in
#-- Notification
#run dunst
# -- Wallpaper
# Automatic
#~/.fehbg
# Static
feh --bg-scale "$HOME/MEGA/Wallpaper/Animewe/Evangelion/Eva01.png"
# -- Reload xresources
xrdb ~/.Xresources


# -- Demons
run greenclip daemon
#run tilda
#run urxvtd
#run pcmanfm --daemon-mode
#run megasync
#[ ! -s ~/.config/mpd/pid ] && mpd


# -- Applications
#run telegram-desktop
#run firefox
#run konsole
