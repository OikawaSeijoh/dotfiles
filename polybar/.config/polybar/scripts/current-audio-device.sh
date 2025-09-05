#!/bin/bash

# Get default sink (output device)
sink=$(pactl get-default-sink)

# Get readable device name
device_name=$(pactl list sinks | grep -A10 "$sink" | grep "Description" | cut -d: -f2- | xargs)

# Shorten known devices (optional)
if [[ "$device_name" == *"Shokz"* ]]; then
    device_name="🎧 Shokz"
elif [[ "$device_name" == *"Speakers"* ]]; then
    device_name="🔊 Speakers"
elif [[ "$device_name" == *"Headphones"* ]]; then
    device_name="🎧 Headphones"
fi

echo "$device_name"

