#!/usr/bin/env bash

# This script is called from 'startx' when you start an X session in SuSE Linux

#-- Set keyboard layout
#setxkbmap latam &
#xsetroot -cursor_name left_ptr

#-- Autostart Applications On Every Login
#redshift &
#-- Lockscreen
#light-locker &
#xscreensaver -nosplash &
#xautolock -detectsleep -time 15 -locker "i3lock -n -i $HOME/lockscreen.png" -killtime 20 -killer "systemctl suspend"

#-- MPD start if no other user instance exists
#[ ! -s ~/.config/mpd/pid ] && mpd
#export MPD_HOST=${HOME}/.config/mpd/socket

#-- Reload Xresources
xrdb ~/.Xresources

#-- Defaults
#export VISUAL="/usr/bin/nvim"
export EDITOR="/usr/bin/nvim"
export TERMINAL="kitty"
export BROWSER="/usr/bin/firefox"
#-- QT
#export QT_QPA_PLATFORMTHEME="qt5ct"
#-- Custom PATH
export PATH="${PATH}:${HOME}/bin:${HOME}/bin/scripts:${HOME}/.cargo/bin" #:${HOME}/.local/bin/
#-- Distro configs
export DISTRO='osuse'


# In case everything goes wrong, we at least fall back to a plain xterm
failsafe="xterm -ls -T Failsafe -geometry 80x24-0-0"
trap "exec $failsafe" EXIT SIGHUP SIGINT SIGPIPE SIGTERM SIGIO

# Some bash (1 and 2) settings to avoid trouble on a failed program call.
set +e > /dev/null 2>&1
set +u > /dev/null 2>&1
set +o posix  > /dev/null 2>&1
if type shopt > /dev/null 2>&1 ; then
    shopt -s execfail
else
    no_exit_on_failed_exec=1
fi


# Source common code shared between the
# X session and X init scripts
. /etc/X11/xinit/xinitrc.common
# Special for twm
case "$WINDOWMANAGER" in
    *twm) xsetroot -solid darkslateblue
esac
# Uncomment next lines to activate asking for ssh passphrase
# if test -S "$SSH_AUTH_SOCK" -a -x "$SSH_ASKPASS"; then
#       ssh-add < /dev/null
# fi

# finally start the window manager
unset WINDOW_MANAGER STARTUP
exec $WINDOWMANAGER ${1+"$@"}

# call failsafe
exit 0
