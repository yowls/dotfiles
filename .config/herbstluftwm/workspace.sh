#!/usr/bin/env bash

# Create TAGS

tag_names=( {1..9} 0 )
#tag_names=( "I" "II" "III" "IV" "V" "VI" "Vii" "Viii" "IX" "X" )
#tag_names=( "하나", "두", "세", "네", "다섯", "여섯", "일곱", "여덟", "아홉" )

tag_keys=( {1..9} 0 )
hc rename default "${tag_names[0]}" || true
for i in "${!tag_names[@]}" ; do
    hc add "${tag_names[$i]}"
    key="${tag_keys[$i]}"
    if ! [ -z "$key" ] ; then
        hc keybind "$Mod-$key" use_index "$i"
#        hc keybind "$Mod-Shift-$key" move_index "$i"
	hc keybind "$Mod-Shift-$key" chain , move_index "$i" , use_index "$i"
    fi
done

# cycle through tags
hc keybind $Mod-period use_index +1 --skip-visible
hc keybind $Mod-comma  use_index -1 --skip-visible
