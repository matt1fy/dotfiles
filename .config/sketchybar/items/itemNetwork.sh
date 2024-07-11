#!/usr/bin/env sh

sketchybar -m --add item network_up right \
              --set network_up label.font="SF Pro:Bold:8.0" \
                               icon.font="SF Pro:Bold:8.0" \
                               icon=􀆇 \
                               icon.highlight_color=0xff458588 \
                               y_offset=5 \
                               width=0 \
                               update_freq=1 \
                               script="$PLUGIN_DIR/network.sh" \
              --add item network_down right \
              --set network_down label.font="SF Pro:Bold:8.0" \
                                 icon.font="SF Pro:Bold:8.0" \
                                 icon=􀆈 \
                                 icon.highlight_color=0xffd79921 \
                                 y_offset=-5 \
                                 update_freq=1\

sketchybar --add bracket network_info network_up network_down \
           --set network_info background.color=0xff32302f  \
                              background.corner_radius=$ITEM_CORNER_RADIUS \
                              background.height=$ITEM_BACKGROUND_HEIGHT \
                              background.padding_right=$ITEM_PADDING \
                              background.padding_left=0