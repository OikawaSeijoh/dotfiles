status=$(acpi -b)
percent=$(echo "$status" | grep -P -o '[0-9]+(?=%)')
charging=$(echo "$status" | grep -qi "charging" && echo "⚡" || echo "🔋")

echo "$charging $percent%"
