#!/usr/bin/env bash

# Call Variable = $INFO

if [ "$SENDER" = "volume_change" ]; then
  VOLUME="$INFO"

  case "$VOLUME" in
    [7-9][0-9]|100) ICON="􀊩"
    ;;
    [3-6][0-9]) ICON="􀊧"
    ;;
    [1-9]|[1-2][0-9]) ICON="􀊥"
    ;;
    *) ICON="􀊣"
  esac

[[ "${VOLUME}" -gt 5 ]] && COLOR="0xffffffff" || COLOR="0xccff0e0e"

  sketchybar --set "$NAME" icon="$ICON" label="$VOLUME%"
fi
