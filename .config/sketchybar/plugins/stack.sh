#!/usr/bin/env bash

# Exit if Not in Stack
CURRENT=$(yabai -m query --windows --window | jq '.["stack-index"]')
if [[ $CURRENT -eq 0 ]]; then
  sketchybar -m --set stack label="" \
                --set stack_sep drawing=off \
                --set stack drawing=off
  exit 0
fi

# Use Numbers in place of Dots if the Stack is greater than 10
# Use a larger font for the unicode dots
LAST=$(yabai -m query --windows --window stack.last | jq '.["stack-index"]')
if [[ $LAST -gt 10 ]]; then
  sketchybar -m --set stack label.font="Zed Mono:Bold:11.0" \
                --set stack label=$(printf "[%s/%s]" "$CURRENT" "$LAST") \
                --set stack_sep drawing=on \
                --set stack drawing=on
  exit 0
else
  sketchybar -m --set stack label.font="Zed Mono:Bold:18.0"
fi

# Create Stack Indicator
declare -a dots=()
for i in $(seq 0 $(expr $LAST - 1))
do
  # Theme 1
  # if [[ $i -lt $(expr $CURRENT - 1) ]]; then
    # dots+="◖"
  # elif [[ $i -gt $(expr $CURRENT - 1) ]]; then
    # dots+="◗"
  # elif [[ $i -eq $(expr $CURRENT - 1) ]]; then
    # dots+="●"
  # fi
  # Theme 2
  [[ $( expr $CURRENT - 1) -eq $i ]] && dots+="●" || dots+="○"
done

# Display Indicator
sketchybar -m --set stack label=$(printf "%s" ${dots[@]}) \
              --set stack_sep drawing=on \
              --set stack drawing=on \
              --set stack_sep background.padding_left=-15 \
              --set stack background.padding_left=-15 \
              --set stack_sep y_offset=1 \
              --set stack y_offset=1

# sauce https://github.com/FelixKratz/SketchyBar/discussions/12?sort=new#discussioncomment-1263547
