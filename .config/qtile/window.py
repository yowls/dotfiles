from libqtile import layout
from libqtile.config import Key, Click, Drag
from libqtile.command import lazy


# Global variables
mod = "mod4"
alt = "mod1"

layouts = [
    layout.Max(),
    layout.Stack(num_stacks=2),
    layout.MonadTall(),
    layout.MonadWide(),
    #layout.Tile(),
    #layout.Bsp(),
    #layout.Columns(),
    #layout.Matrix(),
    #layout.RatioTile(),
    #layout.TreeTab(),
    #layout.VerticalTile(),
    #layout.Zoomy(),
]

keys = [
    # Basic
    Key([mod, "control"], "q", lazy.shutdown(),
    desc="Shutdown qtile"),
    Key([mod, "control"], "r", lazy.restart(),
        desc="Restart qtile"),
    Key([mod], "q", lazy.window.kill(),
        desc="Kill focused window"),
    Key([mod], "r", lazy.spawncmd(),
        desc="Spawn a command using a prompt widget"),
    # Focusing
    Key([mod], "k", lazy.layout.down(),
        desc="Move focus down in stack pane"),
    Key([mod], "j", lazy.layout.up(),
        desc="Move focus up in stack pane"),
    Key([mod], "Tab", lazy.layout.next(),
        desc="Switch window focus to other pane(s) of stack"),
    # Moving
    Key([mod, "control"], "k", lazy.layout.shuffle_down(),
        desc="Move window down in current stack "),
    Key([mod, "control"], "j", lazy.layout.shuffle_up(),
        desc="Move window up in current stack "),
    # Resize
    # Layout
    Key([mod, "shift"], "space", lazy.layout.rotate(),
        desc="Swap panes of split stack"),
    Key([mod], "space", lazy.next_layout(),
        desc="Toggle between layouts"),
    Key([mod, "shift"], "Return", lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack"),
]

# Mousebinds.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front())
]
