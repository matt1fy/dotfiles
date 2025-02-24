#!/usr/bin/env bash

args=()
if [ "$NAME" != "space_template" ]; then
  args+=(--set $NAME label=$NAME \
                     icon.highlight=$SELECTED)
fi

if [ "$SELECTED" = "true" ]; then
  args+=(--set spaces_$DID.label label=${NAME#"spaces_$DID."})
  args+=(--set $NAME icon.background.y_offset=-16.0)
else
  args+=(--set $NAME icon.background.y_offset=20)
fi

sketchybar -m --animate tanh 20 "${args[@]}"
