#!/usr/bin/env bash

plugin_dir="$HOME/.config/sketchybar/plugins"

sketchybar --add item network right			 \
	   --set network script="$plugin_dir/network.sh" \
	   		 updates=on			 \
			 y_offset=2			 \
			 label.drawing=off		 \
	   --subscribe network wifi_change
