#!/usr/bin/env bash
#disk.sh

#sketchybar -m --set "$NAME" label="$(df -H | grep -E '^(/dev/disk3s5).' | awk '{ printf ("%s\n", $5) }')"
sketchybar -m --set "$NAME" label="$(df -H /System/Volumes/Data | awk 'END {print $5}' | sed 's/%//')%"
