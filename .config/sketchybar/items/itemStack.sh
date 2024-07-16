#!/usr/bin/env bash

# Created by Matt1fy

sketchybar -m --add item stack_sep left \
              --add item stack left \
              --set stack script="$plugin_dir/stack.sh" \
              --subscribe stack window_focus front_app_switched space_change title_change \
              --set stack_sep drawing=off \
              --set stack drawing=off \
              --set stack update_freq=0
