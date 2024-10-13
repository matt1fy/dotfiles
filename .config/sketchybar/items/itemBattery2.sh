#!/usr/bin/env bash

# Created by Matt1fy

sketchybar -m --add item battery2 right \
              --set battery2 y_offset=0.5 \
              --set battery2 update_freq=60 label.padding_right=-20 icon.padding_left=0 background.drawing=off script="$plugin_dir/battery2.sh" \
              --subscribe battery2 system_woke power_source_change
