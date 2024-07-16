#!/usr/bin/env bash

# Created by Matt1fy

sketchybar -m --add item battery right \
              --set battery y_offset=1 \
              --set battery update_freq=60 script="$plugin_dir/battery.sh" \
              --subscribe battery system_woke power_source_change
