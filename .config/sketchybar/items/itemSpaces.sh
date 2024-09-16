#!usr/bin/env bash

# Created by Matt1fy

# Loading my colors icons and defaults
source "$HOME/.config/sketchybar/mResources/mColors.sh"
source "$HOME/.config/sketchybar/mResources/mIcons.sh"

# 􀾭 􀾬   􀌋  􀌌 􀼅 􀼆  􀜤    􁶺    􀯏􂂆  􂃈      􁇵  􀙚 􀰇  􀓅   􀈕    􀈖
# 􀂮􀂤􀂠􀂠􀂜􀂶≠
# ("􀀜" "􀨺" "􀍋" "􀩼" "􀩼" "􀈗" "􀈗" "􀌍" "􀊕")
# space_icons=("􀀜" "􀌋" "􀜤" "􀩼" "􀈕" "􀾬" "􀙚" "􀈖" "􀾭")

spaces=("main" "cloud" "nle" "code" "files" "media" "code2" "files2" "media2")
space_icons=("􀀜" "􀀼" "􀀾" "􀘗" "􀁂" "􀁄" "􀁆" "􀁈" "􀁊")
space_colors=("$PURPLE" "$SKY" "$RED" "$TURQUOISE" "$ACCENTGOLDII" "$HOTPINK" "$TURQUOISE" "$ACCENTGOLDII" "$SPOTIFYGREEN")
for i in "${!space_icons[@]}"
do
  sid="$(($i+1))"
  space=(
    space="$sid"
    icon="${space_icons[i]}"
    icon.font="SF Pro:Bold:19.0"
    y_offset=1
    icon.padding_left=3
    icon.padding_right=3
    icon.highlight_color="${space_colors[i]}"
    icon.padding_left=1
    icon.padding_right=3
    icon.background.color="${space_colors[i]}"
    icon.background.height=4
    icon.background.y_offset=-5
    icon.background.corner_radius=1.8
    icon.background_shadow=on
    icon.background.shadow_color="$BLACK"
    background.padding_left=1
    background.padding_right=3
    label.drawing=off
    script="$plugin_dir/space.sh"
    click_script="yabai -m space --focus $sid"
  )
  sketchybar --add space space."$sid" center --set space."$sid" "${space[@]}"
done
