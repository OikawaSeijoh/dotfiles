
#!/bin/bash

# Optional delay to ensure devices are initialized
sleep 1

# Define your specific devices (update names as needed)
DEVICES=("Pebble M350s Mouse" "ELAN0790:00 04F3:315D Touchpad")

for device in "${DEVICES[@]}"; do
    prop_id=$(xinput list-props "$device" 2>/dev/null | grep "Natural Scrolling Enabled (" | sed -n 's/.*(\([0-9]*\)).*/\1/p')
    if [[ -n "$prop_id" ]]; then
        xinput set-prop "$device" "$prop_id" 1
        echo "✅ Enabled natural scrolling on: $device"
    else
        echo "❌ Could not set natural scroll on: $device"
    fi
done
