#!/bin/bash

# Kill existing bars
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 0.5; done

# Launch only on HDMI-1 if connected
if xrandr | grep "HDMI-1 connected" > /dev/null; then
  MONITOR="HDMI-1"
else
  MONITOR="eDP-1"
fi

MONITOR=$MONITOR polybar main &
