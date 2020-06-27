from libqtile.config import Group, Key
from libqtile.command import lazy
from window import keys, mod, alt

group_names = ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X"]
#group_names = ["하나", "두", "세", "네", "다섯", "여섯", "일곱", "여덟", "아홉", "십"]

groups = [Group(name) for name in group_names]

for i,name in enumerate(group_names):
    keys.extend([
        # Switch to group
        Key([mod], i.name, lazy.group[i.name].toscreen(),
            desc="Switch to group {}".format(i.name)),

        # Switch to & move focused window to group
        Key([mod, "shift"], i.name, lazy.window.togroup(i.name, switch_group=True),
            desc="Switch to & move focused window to group {}".format(i.name)),
        # Only move focused window to group
        # Key([mod, "shift"], i.name, lazy.window.togroup(i.name),
        #     desc="move focused window to group {}".format(i.name)),
    ])
