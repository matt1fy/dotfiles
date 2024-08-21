#!/usr/bin/env bash

# sketchybar -m --set "$NAME" label="$(memory_pressure | grep "System-wide memory free percentage:" | awk '{ printf("%02.0f\n", 100-$5"%") }')%"

sketchybar -m --set "$NAME" label="$(df -H | grep -E '^(/dev/disk3s1s1 ).' | awk '{ printf ("%s\n", $5) }')"
