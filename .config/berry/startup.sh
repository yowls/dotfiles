#!/bin/bash
# You can use ~/.xprofile to autostart on login
#export PATH="${PATH}:${HOME}/.config/berry/scripts"

# If it´s not running, Run it
run() { [ ! $(pgrep $1) ] && $@& }

# If you want to use XFCE configs
#run xfce-mcs-manager
#-- POLKIT | PAM | KEYRING
run /usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1
#run gnome-keyring
#-- COMPOSITOR
#run picom
#run picom -b --backend glx --vsync
run picom --config ${HOME}/.config/picom/default.conf
#-- NOTIFICATION
run dunst
#run dunst -config ${HOME}/.config/dunst/dunstrc.conf
#-- KEYBINDS
#pgrep -x sxhkd > /dev/null || sxhkd &
run sxhkd -c ${HOME}/.config/berry/sxhkdrc
#-- STATUS BAR
#run lemonbar
#-- Applets
#run parcellite			# Clipboard
#run nm-applet			# Network
#run pa-applet			# Volume
#run lxqt-powermanagement	#Power manager
#-- DOCK
run plank
#-- WIDGETS
#conky -c ${HOME}/.config/conky/
#-- WALLPAPER
run nitrogen --restore						# Automatic
#mpv?								# Dynamic
#feh --bg-fill '/home/yowls/MEGA/Wallpaper/General-Art/66398581_p0.jpg' # Static

#-- Demons
run tilda
#run redshift
#run greenclip daemon
#run urxvtd
#run emacs --daemon

#-- Scripts
#run vitas
#run dual_monitors
#run wal -R
