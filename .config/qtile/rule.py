from libqtile import layout
from libqtile import hook

# Run the utility of `xprop` to see the wm class and name of an X client.
floating_layout = layout.Floating(float_rules=[
    {'wmclass': 'confirm'},
    {'wmclass': 'dialog'},
    {'wmclass': 'download'},
    {'wmclass': 'error'},
    {'wmclass': 'file_progress'},
    {'wmclass': 'notification'},
    {'wmclass': 'splash'},
    {'wmclass': 'toolbar'},
    {'wmclass': 'confirmreset'},    # gitk
    {'wmclass': 'makebranch'},      # gitk
    {'wmclass': 'maketag'},         # gitk
    {'wname': 'branchdialog'},      # gitk
    {'wname': 'pinentry'},          # GPG key password entry
    {'wmclass': 'ssh-askpass'},     # ssh-askpass
])
