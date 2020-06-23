#  ______     ______    __     __         ______
# /\  __ \   /\__  _\  /\ \   /\ \       /\  ___\
# \ \ \/\_\  \/_/\ \/  \ \ \  \ \ \____  \ \  __\
#  \ \___\_\    \ \_\   \ \_\  \ \_____\  \ \_____\
#   \/___/_/     \/_/    \/_/   \/_____/   \/_____/
#   github.com/yowls

# Basic imports
import os
import subprocess
# -- SET CUSTOM CONFIG
# 1.Load the keybind for manage WINDOWS
from window import layouts, mouse
# 2.Load Groups for WORKSPACES control
from workspace import groups
# 3.Load personal KEYBINDS
from keybind import keys
# 4.Load the qtile THEME
from Themes.default import *
# 5.Load the RULES for windows
from rule import *
# 6.Load the config of PANEL
from Panels.default import screens
# 7.Load hook for autostart
from libqtile import hook


# Options
dgroups_key_binder = None
dgroups_app_rules = []
main = None
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
auto_fullscreen = True
focus_on_window_activation = "smart"
wmname = "qtile"


# 7.Load on login STARTUP programs
@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('~/.config/qtile/autostart.sh')
    subprocess.call([home])
