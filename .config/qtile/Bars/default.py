from libqtile.config import Screen
from libqtile import bar, widget
from typing import List

# Color scheme
colors = ["#1c2541",  # 0th
          "#4f000b",  # 1st
          "#720026",  # 2nd
          "#ce4257",  # 3rd
          "#ff9b54",  # 4th
          "#ff7f51"   # 5th
         ]
# Fonts
#fonts  = ["font1", "font2"]

# Config for just one screen
screens = [
    Screen(
        bottom=bar.Bar(
            [
                widget.CurrentLayoutIcon(
                    background  = colors[0],
                    foreground  = colors[4],
                    fontsize    = 8,
                    padding     = 2
                ),
                widget.Net(
                    interface = "wlp2s0",
                    format = '{down} ↓↑ {up}',
                    background  = colors[0],
                    foreground  = colors[3],
                    font        = "Century Schoolbook L Bold",
                    fontsize    = 9,
                    padding     = 2
                ),
                widget.Prompt(
                    background  = colors[0],
                    foreground  = colors[2],
                    font        = "Century Schoolbook L Bold",
                    fontsize    = 9,
                    padding     = 2
                ),
                widget.Sep(
                    linewidth = 0,
                    padding = 500,
                    foreground = colors[0],
                    background = colors[0]
                ),
                widget.GroupBox(
                    font="Century Schoolbook L Bold",
                    fontsize    = 9,
                    margin_x    = 0,
                    margin_y    = 3,
                    padding     = 2,
                    borderwidth = 2,
                    active   = colors[4],
                    inactive = colors[1],
                    rounded = False,
                    highlight_method    = "block",
                    highlight_color     = colors[4],
                    this_current_screen_border  = colors[0],
                    this_screen_border          = colors[0],
                    other_current_screen_border = colors[0],
                    foreground      = colors[1],
                    background      = colors[0]
                ),
                widget.Spacer(),
                widget.Systray(
                    icon_size   = 20,
                    padding     = 3
                ),
                widget.Volume(
                    background  = colors[0],
                    foreground  = colors[2],
                    font        = "Century Schoolbook L Bold",
                    font_size   = 9,
                    padding     = 2
                ),
#                widget.Backlight(
#                    background  = colors[0],
#                    foreground  = colors[2],
#                    font        = "Century Schoolbook L Bold",
#                    font_size   = 9,
#                    padding     = 2
#                ),
                widget.Battery(
                    background  = colors[0],
                    foreground  = colors[2],
                    font        = "Century Schoolbook L Bold",
                    padding     = 2
                ),
                widget.Clock(
                    format  = '%m-%d %H:%M'
                ),
                widget.QuickExit(
                )
            ],
            24,
        ),
    ),
]
