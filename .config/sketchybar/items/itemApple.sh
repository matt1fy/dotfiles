#!/usr/bin/env bash

# Created by Matt1fy

POPUP_OFF="sketchybar --set apple.logo popup.drawing=off"
POPUP_CLICK_SCRIPT="sketchybar --set \$NAME popup.drawing=toggle"

sketchybar --add item           apple.logo center                           \
                                                                            \
           --set apple.logo     icon=􀣺                                      \
                                icon.font="SF Pro:Black:16.0"               \
                                icon.color=0xffffffff                       \
                                y_offset=1                                  \
                                background.padding_left=-3                  \
                                background.padding_right=3                  \
                                label.drawing=off                           \
                                click_script="$POPUP_CLICK_SCRIPT"          \
                                popup.background.drawing=on                 \
                                popup.background.padding_left=6             \
                                popup.background.padding_right=6            \
                                popup.background.border_width=3             \
                                popup.background.corner_radius=7            \
                                popup.background.color=$BAR_COLOR           \
                                popup.background.blur_radius=100            \
                                popup.background.border_color=$PASTELPURPLE \
                                                                            \
           --default background.padding_left=5                              \
                     background.padding_right=5                             \
                     icon.padding_right=5                                   \
                     icon.font="SF Pro:Bold:16.0"                           \
                     label.font="SF Pro:Semibold:13.0"                      \
                                                                            \
           --add item           apple.prefs popup.apple.logo                \
           --set apple.prefs    icon=􀍟                                     \
                                label="Preferences"                         \
                                click_script="open -a 'System Preferences';
                                              $POPUP_OFF"                   \
                                                                            \
           --add item           apple.activity popup.apple.logo             \
           --set apple.activity icon=􀟪                                     \
                                label="Activity"                            \
                                click_script="open -a 'Activity Monitor';
                                              $POPUP_OFF"                   \
                                                                            \
           --add item           apple.lock popup.apple.logo                 \
           --set apple.lock     icon=􀒳                                     \
                                label="Lock Screen"                         \
                                click_script="pmset displaysleepnow;
                                              $POPUP_OFF"
