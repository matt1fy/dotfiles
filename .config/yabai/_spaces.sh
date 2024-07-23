#!/bin/bash

# Space Mapper
setup_space() {
  local idx="$1"
  local name="$2"
  local space=
  echo "setup space $idx : $name"

  space=$(yabai -m query --spaces --space "$idx")
  if [ -z "$space" ]; then
    yabai -m space --create
  fi

  yabai -m space "$idx" --label "$name"
  if [ "$idx" -lt "3" ]; then
    yabai -m space "$idx" --display 1
  elif [ "$idx" -gt "2" ] && [ "$idx" -lt "5" ]; then
    yabai -m space "$idx" --display 2
  else
    yabai -m space "$idx" --display 3
  fi

}

# Setup or destroy spaces as needed to match 9
for _ in $(yabai -m query --spaces | jq '.[].index | select(. > 6)'); do
  yabai -m space --destroy 7
done

# Set Up Spaces
setup_space 1 main
setup_space 2 NLE
setup_space 3 code1
setup_space 4 code2
setup_space 5 finder
setup_space 6 media

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
