#!/usr/bin/env bash

# Created by Matt1fy

sketchybar --add item volume right \
           --set volume icon.color="$LIGHTBLUE" y_offset=0 icon.padding_left=11 label.padding_right=00 \
           --set volume script="$plugin_dir/volume.sh" \
           --subscribe volume volume_change
