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

# -- Tray icon - Applets
# power manager
# network applet
# brightness
# volume
# clipboard
# Tray system

# -- Demon Processes
# Notification deamon
#run pcmanfm --daemon-mode
#run tilda
#run urxvtd
#run megasync
run greenclip daemon
#[ ! -s ~/.config/mpd/pid ] && mpd

# -- Start application on login
#run telegram-desktop
#run firefox
#run konsole

# -- Compositor
compton &

# -- Wallpaper
# Automatic
#~/.fehbg
# Static
feh --bg-scale "$HOME/MEGA/Wallpaper/Animewe/Evangelion/Eva01.png"

# -- Reload xresources
xrdb ~/.Xresources
