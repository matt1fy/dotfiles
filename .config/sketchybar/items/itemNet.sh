#!/usr/bin/env bash

# Created by Matt1fy
# https://github.com/FelixKratz/SketchyBar/discussions/12?sort=new#discussioncomment-8908932

plugin_dir="$HOME/.config/sketchybar/plugins"

sketchybar --add item net right                  \
           --set net script="$plugin_dir/net.sh" \
                     updates=on                  \
                     label.drawing=off           \
                     icon.padding_right=0        \
                     icon.padding_left=0         \
                     background.padding_right=0  \
                     background.padding_left=0   \
		     y_offset=1			 \
           --subscribe net wifi_change
