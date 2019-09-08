#!/usr/bin/env sh
killall -q polybar

# Wait until the processes have beenq shut down
while pgrep -u 1000 -x polybar > /dev/null; do sleep 1; done

count=$(xrandr --query | grep " connected" | cut -d" " -f1 | wc -l)
primary=$(xrandr --query | grep "primary" | cut -d" " -f1)
if type "xrandr" > /dev/null; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    if [ $m = $primary ]; then
      tray=right
    else
      tray=none
    fi
    TRAY_POSITION=$tray MONITOR=$m polybar --reload mainbar-i3 -c ~/.config/polybar/config &
  done
else
polybar --reload mainbar-i3 -c ~/.config/polybar/config &
fi