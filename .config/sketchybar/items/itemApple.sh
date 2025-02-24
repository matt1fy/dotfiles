#!/usr/bin/env bash

# Created by Matt1fy

POPUP_OFF="sketchybar --set apple.logo popup.drawing=off"
POPUP_CLICK_SCRIPT="sketchybar --set \$NAME popup.drawing=toggle"

apple_logo=(
	icon="$APPLE"
	icon.font="SF Pro:Black:18.0"
	icon.color="$WHITE"
	y_offset=1
	background.padding_left=10
	background.padding_right=3
	label.drawing=off
	click_script="$POPUP_CLICK_SCRIPT"
	popup.height=0
	popup.background.drawing=on
	popup.background_shadow=on
	popup.background.padding_left=12
	popup.background.padding_right=12
	popup.background.border_width=3
	popup.background.corner_radius=7
	popup.background.blur_radius=100
	popup.background.color="$BLACK"
	popup.background.border_color="$ACCENTCOLOR"
)

apple_prefs=(
	icon="$PREFERENCES"
	label="Preferences"
	background.color=$TRANSPARENT
	background.height=30
	background.drawing=on
	click_script="open -a 'System Preferences'; $POPUP_OFF"
)

apple_activity=(
	icon="$ACTIVITY"
	label="Activity Monitor"
	background.color=0x00000000
	background.height=30
	background.drawing=on
	click_script="open -a 'Activity Monitor'; $POPUP_OFF"
)

apple_disk=(
    icon="$DISKUTI"
    label="Disk Utility"
    background.color=$TRANSPARENT
    background.height=30
    background.drawing=on
    click_script="open -a 'Disk Utility'; $POPUP_OFF"
)

apple_divider=(
	icon.drawing=off
	label.drawing=off
	background.color="$SKY"
	background.height=1
	padding_left=7
	padding_right=7
	width=140
	background.drawing=on
)

apple_lock=(
	icon="$LOCKROUND"
	label="Lock Screen"
	background.color=0x00000000
	background.height=50
	background.drawing=on
	click_script="pmset displaysleepnow; $POPUP_OFF"
)

apple_reboot=(
	icon="$REBOOT"
	icon.padding_left=5
	background.color=0x00000000
	background.height=30
	background.drawing=on
	label="Reboot"
	click_script="osascript -e 'tell app \"loginwindow\" to «event aevtrrst»'; $POPUP_OFF"
)

apple_shutdown=(
	icon="$POWER"
	icon.padding_left=5
	background.color=0x00000000
	background.height=30
	background.drawing=on
	label="Shutdown"
	click_script="osascript -e 'tell app \"loginwindow\" to «event aevtrsdn»'; $POPUP_OFF"
)

sketchybar --add item apple.logo center                \
           --set apple.logo "${apple_logo[@]}"         \
                                                       \
           --add item apple.prefs popup.apple.logo     \
           --set apple.prefs "${apple_prefs[@]}"       \
                                                       \
           --add item apple.activity popup.apple.logo  \
           --set apple.activity "${apple_activity[@]}" \
                                                       \
           --add item apple.disk popup.apple.logo      \
           --set apple.disk "${apple_disk[@]}"         \
                                                       \
           --add item apple.divider popup.apple.logo   \
           --set apple.divider "${apple_divider[@]}"   \
                                                       \
           --add item apple.reboot popup.apple.logo    \
           --set apple.reboot "${apple_reboot[@]}"     \
                                                       \
           --add item apple.shutdown popup.apple.logo  \
           --set apple.shutdown "${apple_shutdown[@]}" \
                                                       \
           --add item apple.divider2 popup.apple.logo  \
           --set apple.divider2 "${apple_divider[@]}"  \
                                                       \
           --add item apple.lock popup.apple.logo      \
           --set apple.lock "${apple_lock[@]}"         \
           --subscribe apple_logo mouse.exited.global
