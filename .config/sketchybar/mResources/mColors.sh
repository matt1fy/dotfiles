#!/usr/bin/env bash

# Created by Matt1fy

# mColor Palette

# Mono
export BLACK=0xff282828 #282828
export WHITE=0xffffffff #ffffff
export OFFWHITE=0xffebdbb2 #ebdbb2
export GREY=0xff928374 #928374
export SKY=0xff83a598 #83a598
export GRAYTRANS=0x732a2735 #2a2735
export GRAYLITE=ff665c54 #665c54
export DULLGRAY=0xff414550 #414550
export FROSTEDGLASS=0x4dbad2d2 #bad2d2
export VAMPBLACK=0xd9140e14 #140e14

# Colors
export PASTELPURPLE=0xb3715eac #715eac
export PURPLE=0xffc576e5 #0xc576e5
export LIGHTPURPLE=0xffd6b0f4 #d6b0f4
export SOFTPURPLE=0xfff1e1ff #f1e1ff
export HOTPINK=0xe6e02e85 #e02e85
export MAGENTA=0xffb16286 #b16286
export RED=0xffba2437 #ba2437
export PASTELRED=0xffdf857b #df857b
export ORANGE=0xffd65d0e #d65d0e
export ORANGELITE=0xffff9853 #ff9853
export YELLOW=0xffd79921 #d79921
export PASTELGREEN=0xffa6df7b #a6df7b
export SPOTIFYGREEN=0xe615e82e #15e82e
export GREEN=0xff98971a #98971a
export TURQUOISE=0xff0eb295 #0eb295
export TEAL=0xe679b9a3 #79b9a3
export BRIGHTBLUE=0xff4b9cff #4b9cff
export LIGHTBLUE=0xffafeeff #afeeff
export BLUE=0xff458588 #458588
export LIMEYGREEN=0xffccff00 #ccff00
export LIMEYGREEND=0xffb6dd20 #b6dd20
export HOTRED=0xffca1b04 #ca1b04
export DEEPRED=0xff5b0909 #5b0909
export HOTREDALPHA=0x73ca1b04 #ca1b04

# Gold Accents
export ACCENTGOLDI=0xffede0a9 #ede0a9
export ACCENTGOLDII=0xffe8c83f #e8c83f
export ACCENTGOLDIII=0xffd4a600 #d4a600


export ITEM_COLOR=0xff32302f #32302f
export SPACE_BACKGROUND=$ITEM_COLOR
export SPACE_BACKGROUND2=$BLACK
export SPACE_SELECTED=$WHITE
export SPACE_DESELECTED=$BLACK
export OPEN_APPS_BACKGROUND=$ITEM_COLOR
export CALENDAR_BACKGROUND=0xffb8c0e0 #b8c0e0

# General bar colors
export BAR_COLOR1=$GRAYTRANS #732a2735
export BAR_COLOR2=$VAMPBLACK #d9140e14
export ICON_COLOR=$WHITE #ffffff
export LABEL_COLOR=$WHITE #ffffff
export ALT_LABEL_COLOR=$SOFTPURPLE # Alternative label color
export POPUP_BG_COLOR=$BLACK
export POPUP_BD_COLOR=$WHITE

# Function type lol
export SHADOW_COLOR=$BLACK
export TRANSPARENT=0x00000000

# Testing colors
export PURPLEFLURP=0xffbe7cf4
export PURPLEFLURP2=0xffa761df
export PURPLEFLURP3=0xffb038b9
export PURPLEFLURP4=0xffa77adb

# Cycle Accent colors
export RANDOM_CAT_COLOR=("$MAGENTA" "$PASTELPURPLE" "$HOTPINK" "$RED" "$ORANGELITE" "$PASTELGREEN" "$TEAL" "$BLUE" "$ACCENTGOLDIII" "$BLACK" "$OFFWHITE")

function getRandomCatColor() {
  echo "${RANDOM_CAT_COLOR[ $RANDOM % ${#RANDOM_CAT_COLOR[@]} ]}"
}

# My Variables
# export ACCENTCOLOR=$(getRandomCatColor)
export ACCENT_COLOR1=$LIMEYGREEN #ccff00
export ACCENT_COLOR2=$HOTRED #ca1b04
export INACTIVE=$DULLGRAY

# Script Modal Colors
export ScriptBar=$VAMPBLACK #d9140e14
export ScriptHL=$HOTRED #ca1b04
