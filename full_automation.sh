#!/bin/bash

#This script creates configuration files for tmux, Vim, and aliases for DEBIAN based systems
		
	#Make sure you are on home directory

	cd $HOME

	#Create TWO new directories (in case they don't exist)

	mkdir -p $HOME/Documents/scripts $HOME/Documents/logs

	#Download the configuration file for keyboard shortcuts with gnome in Ubunutu

	wget https://raw.githubusercontent.com/tenorediforza/configurations/refs/heads/main/custom.txt -O ->> custom.txt

	#Load keyboad binding file configuration

	cat custom.txt | dconf load /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/

#Add respective lines to .bash_aliases
	wget https://raw.githubusercontent.com/tenorediforza/configurations/refs/heads/main/bash_aliases -O ->> .bash_aliases

#Add respective lines to .tmux.conf file
	wget https://raw.githubusercontent.com/tenorediforza/configurations/refs/heads/main/tmux.conf -O ->> .tmux.conf

#Add respective lines to .vimrc file

	wget https://raw.githubusercontent.com/tenorediforza/configurations/refs/heads/main/vimrc -O ->> .vimrc

#Download bash_script_creator

wget https://raw.githubusercontent.com/tenorediforza/bash_scripts/refs/heads/main/create_new_bash_script.sh > $HOME/Documents/scripts/create_new_bash_script.sh

#NOTE:Copy and paste from clipboard feature in VIM. Make sure you have these packages installed:
#	| wl-clipboard |	| xsel |	| xclip |

	mv create_new_bash_script.sh full_automation.sh $HOME/Documents/scripts

	chmod +x $HOME/Documents/scripts/create_new_bash_script.sh

	echo "source $HOME/.bash_aliases"

	echo "La comedia è finita"
