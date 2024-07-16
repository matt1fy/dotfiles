#!/usr/bin/env bash

# Created by Matt1fy

sketchybar --add item front_app center \
           --set front_app icon.drawing=off script="$plugin_dir/front_app.sh" \
           --subscribe front_app front_app_switched
