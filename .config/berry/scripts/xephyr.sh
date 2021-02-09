#!/bin/bash

#killall sxhkd

Xephyr -screen 640x480 -screen 640x480 +xinerama :80 &
sleep 1

export DISPLAY=:80
sxhkd -c ./sxhkdrc &

berry -c ./autostart
