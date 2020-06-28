#!/usr/bin/env bash

# Basic
hc keybind $Mod-Shift-q chain , pkill redshift, quit
hc keybind $Mod-Shift-r reload
hc keybind $Mod-q close


# Focusing clients
hc keybind $Mod-Left  focus left
hc keybind $Mod-Down  focus down
hc keybind $Mod-Up    focus up
hc keybind $Mod-Right focus right
hc keybind $Mod-h     focus left
hc keybind $Mod-j     focus down
hc keybind $Mod-k     focus up
hc keybind $Mod-l     focus right


# Moving clients
hc keybind $Mod-Shift-Left  shift left
hc keybind $Mod-Shift-Down  shift down
hc keybind $Mod-Shift-Up    shift up
hc keybind $Mod-Shift-Right shift right
hc keybind $Mod-Shift-h     shift left
hc keybind $Mod-Shift-j     shift down
hc keybind $Mod-Shift-k     shift up
hc keybind $Mod-Shift-l     shift right


# Splitting frames
hc keybind $Mod-u	split   bottom  0.5
hc keybind $Mod-o	split   right   0.5
# let the current frame explode into subframes
hc keybind $Mod-Control-space split explode


# Resizing frames and floating clients
resizestep=0.02
hc keybind $Mod-Control-h       resize left +$resizestep
hc keybind $Mod-Control-j       resize down +$resizestep
hc keybind $Mod-Control-k       resize up +$resizestep
hc keybind $Mod-Control-l       resize right +$resizestep
hc keybind $Mod-Control-Left    resize left +$resizestep
hc keybind $Mod-Control-Down    resize down +$resizestep
hc keybind $Mod-Control-Up      resize up +$resizestep
hc keybind $Mod-Control-Right   resize right +$resizestep


# Layouting
hc keybind $Mod-r remove
hc keybind $Mod-s floating toggle
hc keybind $Mod-f fullscreen toggle
hc keybind $Mod-Shift-f set_attr clients.focus.floating toggle
hc keybind $Mod-p pseudotile toggle

#hc keybind $Mod-d	max
hc keybind $Mod-space							\
            or , and . compare tags.focus.curframe_wcount = 2		\
                     . cycle_layout +1 vertical horizontal max grid	\
               , cycle_layout +1


# Focus
#hc keybind $Mod-BackSpace   cycle_monitor
hc keybind $Mod-Tab         cycle_all +1
hc keybind $Mod-Shift-Tab   cycle_all -1
hc keybind $Mod-c cycle
hc keybind $Mod-i jumpto urgent


# Mouse
hc mousebind $Mod-Button1 move
hc mousebind $Mod-Button3 zoom
hc mousebind $Mod-Button2 resize
hc mousebind $Alt-Button1 resize
