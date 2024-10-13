#!/usr/bin/env bash
source "$HOME/.config/sketchybar/mResources/mColors.sh"
source "$HOME/.config/sketchybar/mResources/mIcons.sh"
source "$HOME/.config/sketchybar/mResources/mDefaults.sh"
plugin_dir="$HOME/.config/sketchybar/plugins/"

cpu_percent=(
	label.font="$LABEL_FONTS"
	label=CPU%
	label.color="$WHITE"
	label.padding_right=0
	icon="$CPU"
	icon.font="CaskaydiaCove Nerd Font:Bold:20.0"
	icon.color="$SOFTPURPLE"
	icon.padding_left=-1
	update_freq=5
	script="$plugin_dir/cpu.sh"
)

sketchybar 	--add item cpu.percent right 		\
		--set cpu.percent "${cpu_percent[@]}"

memory=(
    label.font="$LABEL_FONTS"
	label.color="$WHITE"
	label.padding_right=0
	icon="$MEMORY"
	icon.font="CaskaydiaCove Nerd Font:Bold:20.0"
	icon.color="$LIGHTPURPLE"
	icon.padding_left=0
	update_freq=5
	script="$plugin_dir/ram.sh"
)

sketchybar 	--add item memory right 		\
		--set memory "${memory[@]}"

disk=(
	label.font="$LABEL_FONTS"
	label.color="$WHITE"
	label.padding_right=0
	icon="$DISK"
	icon.font="CaskaydiaCove Nerd Font:Bold:20.0"
	icon.color="$PURPLE"
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
	icon.font="$ICON_FONT:Light:16.0"
	icon.padding_right=4
	icon.padding_left=0
	background.padding_left=05
	background.padding_right=09
	label.drawing=off
	click_script='sketchybar --trigger toggle_stats'
	icon.color="$TEAL"
)

sketchybar  --add item separator_right right \
	    --set separator_right "${separator_right[@]}"
