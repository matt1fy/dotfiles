#!/usr/bin/env bash

# Created by Matt1fy

sketchybar --add item clock left \
           --set clock update_freq=10 icon.drawing=off label.padding_left=10 label.padding_right=12 script="$plugin_dir/clock.sh"
