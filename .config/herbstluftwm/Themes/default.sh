#!/usr/bin/env bash

# Theme
# for a simple customization enter in:
# http://herbstluftgen.hellco.net/

# Variables
#color1="#6d597a"
#color2="#355070"
#color3="#eaac8b"
#color4="#b56576"
#color5="#e56b6f"


xsetroot -solid '#6d597a'
hc set frame_border_active_color '#6d597a'
hc set frame_border_normal_color '#355070'
hc set frame_bg_normal_color 'transparent'
hc set frame_bg_active_color 'transparent'
hc set frame_border_width 0
hc set always_show_frame 0
hc set frame_bg_transparent 1
hc set frame_transparent_width 0
hc set frame_gap 3

hc attr theme.active.color '#eaac8b'
hc attr theme.normal.color '#6d597a'
hc attr theme.urgent.color '#e56b6f'
hc attr theme.inner_width 0
hc attr theme.inner_color '#b56576'
hc attr theme.border_width 3
hc attr theme.floating.border_width 3
hc attr theme.floating.outer_width 1
hc attr theme.floating.outer_color '#ffffff'
hc attr theme.active.inner_color '#e56b6f'
hc attr theme.active.outer_color '#eaac8b'
hc attr theme.background_color '#355070'

hc set window_gap 3
hc set frame_padding 5
hc pad :0 16 0 0 0

#hc set smart_window_surroundings off
#hc set smart_frame_surroundings on
#hc set mouse_recenter_gap 0
