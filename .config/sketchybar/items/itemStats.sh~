#!/usr/bin/env bash

plugin_dir="$HOME/.config/sketchybar/plugins/"

sketchybar 	--add event 		hide_stats			\
		--add event 		show_stats			\
           	--add event 		toggle_stats			\
                  							\
           	--add item	animator right         			\
           	--set animator 	drawing=off            			\
                    		updates=on             			\
                              	script="$plugin_dir/toggle_stats.sh"	\
           	--subscribe        	animator hide_stats show_stats toggle_stats
