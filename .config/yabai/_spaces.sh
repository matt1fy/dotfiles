#!/bin/bash

# Space Mapper
setup_space() {
  local idx="$1"
  local name="$2"
  local space=
  echo "setup space $idx : $name"

#  space=$(yabai -m query --spaces --space "$idx")
#  if [ -z "$space" ]; then
#    yabai -m space --create
#  fi
#
#  yabai -m space "$idx" --label "$name"
#  if [ "$idx" -lt "4" ]; then
#    yabai -m space "$idx" --display 1
#  elif [ "$idx" -gt "3" ] && [ "$idx" -lt "7" ]; then
#    yabai -m space "$idx" --display 2
#  else
#    yabai -m space "$idx" --display 3
#  fi
#
#}

# Setup or destroy spaces as needed to match 9
for _ in $(yabai -m query --spaces | jq '.[].index | select(. > 9 '); do
  yabai -m space --destroy 10
done

# Create Spaces in Displays
# yabai -m space --create 1
# yabai -m space --create 1

finder_padding=(
  top_padding 30
  bottom_padding 30
  left_padding 30
  right_padding 30
)

# Set space padding
# yabai -m config --space 5 "${finder_padding[@]}"
# yabai -m config --space 5 "${finder_padding[@]}"

# Set Always-Floating Spaces
# yabai -m config --space <n> layout float
