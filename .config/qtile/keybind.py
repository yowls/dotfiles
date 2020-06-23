from libqtile.config import Key
from libqtile.command import lazy
from workspace import keys


# Variables
mod = "mod4"
alt = "mod1"
Terminal    = "konsole"
Terminal2   = "urxvt"
#Editor     = "vim"
Browser     = "firefox"
Explorer    = "pcmanfm"

keys.extend([
    # -- BASIC SYSTEM CONTROL
    # Volume
    Key([], "XF86AudioRaiseVolume", lazy.spawn("pactl set-sink-volume 0 +5%"),
        desc="Volume up"),
    Key([], "XF86AudioLowerVolume", lazy.spawn("pactl set-sink-volume 0 -5%"),
        desc="Volume down"),
    Key([], "XF86AudioMute", lazy.spawn("pactl set-sink-mute 0 toggle"),
        desc="Mute volume"),
    # Music
    Key([],"XF86AudioNext", lazy.spawn("playerctl next"),
        desc="Play next"),
    Key([],"XF86AudioPrev", lazy.spawn("playerctl previous"),
        desc="Play previous"),
    Key([],"XF86AudioPlay", lazy.spawn("playerctl play-pause"),
        desc="Toggle Play"),
    # Brightness
    Key([], "XF86MonBrightnessUp", lazy.spawn("xbacklight -inc 10") ,
        desc="Brightness Up"),
    Key([], "XF86MonBrightnessDown", lazy.spawn("xbacklight -dec 10") ,
        desc="Brightness Down"),
    # -- APPLICATIONS
    # Terminal
    Key([mod], "Return", lazy.spawn(Terminal),
        desc="Launch main terminal"),
    Key([mod, alt], "t", lazy.spawn(Terminal2),
        desc="Launch alternative terminal"),
    # Browser
    Key([mod], "b", lazy.spawn(Browser),
        desc="Launch browser"),
    # Explorer
    Key([mod], "e", lazy.spawn(Explorer),
        desc="Launch file explorer"),
    # Screenshots
    Key([], "Print", lazy.spawn("maim -s | xclip -selection clipboard -t image/png"),
        desc="Take partial screenshot"),
    Key([mod], "Print", lazy.spawn("maim ~/Downloads/$(date +%s).png"),
        desc="Take full screenshot"),
    # Launcher
    Key([alt], "space", lazy.spawn("rofi -show drun combi"),
        desc="rofi *launcher* mode"),
    #Key([alt], "Space", lazy.spawn("rofi -show drun combi"),
    #    desc="Launch rofi *dmenu* mode"),
    #Key([alt], "n", lazy.spawn(rofi -mobi "clibpard:greenclip print" -show clipboard -run-command '{cmd}'),
    #    desc="Rofi clipboard"),
    #Key([alt], "m", lazy.spawn( ?? ),
    #    desc="Clear clipboard"),
])
