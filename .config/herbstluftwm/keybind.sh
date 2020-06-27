#!/usr/bin/env bash

# VARIABLES
Terminal=konsole
Terminal2=urxvt
#Editor="$Terminal2 -e vim"
Explorer=pcmanfm
Browser=firefox

# SYSTEM
# Volume control
hc keybind XF86AudioLowerVolume	spawn pactl set-sink-volume 0 -5%
hc keybind XF86AudioRaiseVolume	spawn pactl set-sink-volume 0 +5%
hc keybind XF86AudioMute	spawn pactl set-sink-mute 0 toggle
# Music control
hc keybind XF86AudioNext spawn playerctl next
hc keybind XF86AudioPrev spawn playerctl previous
hc keybind XF86AudioPlay spawn playerctl play-pause
# Brigthness control
hc keybind XF86MonBrightnessUp	spawn xbacklight -inc 10
hc keybind XF86MonBrightnessDown spawn xbacklight -dec 10

# APPLICATIONS
hc keybind $Mod-e	spawn $Explorer
# Doble terminal set
hc keybind $Mod-Return spawn $Terminal
hc keybind $Alt-Control-t spawn $Terminal2

hc keybind $Mod-b	spawn $Browser

# Screenshots
hc keybind Print	spawn maim -s | xclip -selection clipboard -t image/png
hc keybind $Mod-Print	spawn maim ~/Downloads/$(date +%s).png

# Launcher
hc keybind $Alt-space	spawn rofi -show drun combi
#hc keybind $Alt-x	spawn rofi -show run

# Clipboard
hc keybind $Alt-n	spawn rofi -modi "clipboard:greenclip print" -show clipboard -run-command '{cmd}'
#hc keybind $Alt-m	spawn rm ~/.cache/greenclip.history
