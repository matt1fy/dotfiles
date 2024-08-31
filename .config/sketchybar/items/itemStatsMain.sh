#!/usr/bin/env bash
source "$HOME/.config/sketchybar/mResources/mColors.sh"
source "$HOME/.config/sketchybar/mResources/mIcons.sh"
source "$HOME/.config/sketchybar/mResources/mDefaults.sh"
plugin_dir="$HOME/.config/sketchybar/plugins/"

cpu_percent=(
	label.font="$LABEL_FONT:Bold:10.0"
	label=CPU%
	label.color="$WHITE"
	label.padding_right=0
	icon="$CPU"
	icon.color="$BLUE"
	icon.padding_left=-1
	update_freq=2
#	mach_helper="$HELPER"
)

sketchybar 	--add item cpu.percent right 		\
		--set cpu.percent "${cpu_percent[@]}"


memory=(label.font="$LABEL_FONT:Bold:10.0"
	label.color="$WHITE"
	label.padding_right=0
	icon="$MEMORY"
	icon.font="$ICON_FONT"
	icon.color="$GREEN"
	icon.padding_left=-1
	update_freq=15
	script="$plugin_dir/ram.sh"
)

sketchybar 	--add item memory right 		\
		--set memory "${memory[@]}"

disk=(
	label.font="$LABEL_FONT:Bold:10.0"
	label.color="$WHITE"
	label.padding_right=0
	icon="$DISK"
	icon.font="$ICON_FONT"
	icon.color="$ORANGELITE"
	icon.padding_left=-1
	update_freq=60
	script="$plugin_dir/disk.sh"
)

sketchybar	--add item disk right			\
	   	--set disk "${disk[@]}"

#network_down=(
#	y_offset=-7
#	label.font="$FONT:Heavy:10"
#	label.color="$TEXT"
#	icon="$NETWORK_DOWN"
#	icon.font="$NERD_FONT:Bold:16.0"
#	icon.color="$GREEN"
#	icon.highlight_color="$BLUE"
#	update_freq=1
#)

#network_up=(
#	background.padding_right=-70
#	y_offset=7
#	label.font="$FONT:Heavy:10"
#	label.color="$TEXT"
#	icon="$NETWORK_UP"
#	icon.font="$NERD_FONT:Bold:16.0"
#	icon.color="$GREEN"
#	icon.highlight_color="$BLUE"
#	update_freq=1
#	script="$PLUGIN_DIR/stats/scripts/network.sh"
#)

#sketchybar 	--add item network.down right 		\
#		--set network.down "${network_down[@]}" \
#		--add item network.up right 		\
#		--set network.up "${network_up[@]}"


separator_right=(
	icon=
	icon.font="$ICON_FONT:Regular:16.0"
	icon.padding_right=0
	icon.padding_left=0
	background.padding_left=05
	background.padding_right=11
	label.drawing=off
	click_script='sketchybar --trigger toggle_stats'
	icon.color="$ICON_COLOR"
)

sketchybar  --add item separator_right right \
	    --set separator_right "${separator_right[@]}"
