#!/bin/bash

if xrandr | grep "HDMI-1 connected"; then
  # Mirror laptop and monitor
  xrandr --output HDMI-1 --mode 1920x1080 --same-as eDP-1 --auto
else
  # Only laptop
  xrandr --output eDP-1 --auto --primary \
         --output HDMI-1 --off
fi

# Restart polybar on primary
~/.config/polybar/launch.sh

