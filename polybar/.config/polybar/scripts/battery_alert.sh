#!/bin/bash

battery_level=$(cat /sys/class/power_supply/BAT0/capacity)
status=$(cat /sys/class/power_supply/BAT0/status)

if [[ "$status" == "Discharging" ]] && [[ $battery_level -le 15 ]]; then
  notify-send -u critical "Battery low" "Battery is at ${battery_level}%"
fi

