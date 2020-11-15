#!/bin/bash

# Terminate already running bar instences
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

CONFIG=~/.config/polybar/$1

echo $CONFIG

# Launch Polybar, using default config location ~/.config/polybar/config
polybar -rq -c $CONFIG wm_left &
polybar -rq -c $CONFIG wm_right &
polybar -rq -c $CONFIG time &
#polybar -rq -c $CONFIG left &
#polybar -rq -c $CONFIG right &
