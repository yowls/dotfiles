#!/usr/bin/bash

# Special keys
export Mod="Mod4"	# Use the SUPER KEY as the main modifier
export Alt="Mod1"	# Use the ALT KEY as second modifier
export AltR="Mod3" #The RIGHT ALT KEY

# Theming
export Btheme="default"	# Berry Theme
export Ltheme="default"	# Lemonbar Theme

# Preferred applications
export session_menu="rofi-power-menu"

export terminal="kitty"
export terminal2="urxvt"

export editor="codium"
export editor_cmd="$terminal -e nvim"

export config="$editor_cmd ./.config/berry/autostart"
export config_dir="$editor_cmd ./.config/berry/"

export browser="firefox"
export explorer_cmd="$terminal -e ranger"

export monitor_p="$terminal -e htop"

export todo="emacs ./MEGA/parrot.org"
