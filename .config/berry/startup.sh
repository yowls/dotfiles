#!/usr/bin/env bash
# you can use ~/.xprofile to autostart on login

# If it´s not running, Run it
run() { [ ! $(pgrep $1) ] && $@& }

# If you want to use XFCE config tools
#run xfce-mcs-manager
#-- Polkit | Pam
run /usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1
#run /usr/lib64/libexec/kf5/pam_kwallet_init
#-- Compositor
#run picom
#run picom -b --backend glx --vsync
run picom --config ${HOME}/.config/picom/default.conf
#-- Notification
run dunst
#run dunst #-config "${HOME}/.config/dunst/dunstrc.conf"
#-- Status bar
#run lemonbar
# Applets
run parcellite	#Clipboard
#run nm-applet	#Network
#run pa-applet	#Volume
#run lxqt-powermanagement	#Power manager
#-- Dock
run plank
#-- Widgets
#conky -c ${HOME}/.config/conky/
#-- Wallpaper
~/.fehbg	#Automatic
#feh --bg-fill '/home/yowls/MEGA/Wallpaper/General-Art/66398581_p0.jpg' #Static

#-- Demons
run redshift
run tilda
#run urxvtd
#run pcmanfm --daemon-mode

#-- Scripts
#run vitas
#run wal -R
