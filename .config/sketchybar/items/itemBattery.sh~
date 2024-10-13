#!/usr/bin/env bash

# Created by Matt1fy

sketchybar -m --add item battery right \
              --set battery y_offset=0.5 \
              --set battery update_freq=60 label.padding_right=10 icon.padding_left=0 background.drawing=off script="$plugin_dir/battery.sh" \
              --subscribe battery system_woke power_source_change
