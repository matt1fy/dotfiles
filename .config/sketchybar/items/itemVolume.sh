#!/usr/bin/env bash

# Created by Matt1fy

sketchybar --add item volume right \
           --set volume y_offset=1 \
           --set volume script="$plugin_dir/volume.sh" \
           --subscribe volume volume_change
