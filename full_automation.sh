#!/bin/bash

#This script creates configuration files for tmux, Vim, and aliases for DEBIAN based systems
	#These series of commands creates three new files
	
	touch .bash_aliases .tmux.conf .vimrc 
	
	#Create TWO new directories (in case they don't exist)

	mkdir -p $HOME/Documents/scripts $HOME/Documents/logs

#Add respective lines to .bash_aliases
	wget https://raw.githubusercontent.com/tenorediforza/configurations/refs/heads/main/.bash_aliases >> .bash_aliases

#Add respective lines to .tmux.conf file
	wget https://raw.githubusercontent.com/tenorediforza/configurations/refs/heads/main/.tmux.conf >> .tmux.conf

#Add respective lines to .vimrc file

	wget https://raw.githubusercontent.com/tenorediforza/configurations/refs/heads/main/.vimrc >> .vimrc

#Download bash_script_creator

wget https://raw.githubusercontent.com/tenorediforza/bash_scripts/refs/heads/main/create_new_bash_script.sh > $HOME/Documents/scripts/create_new_bash_script.sh

#NOTE:Copy and paste from clipboard feature in VIM. Make sure you have these packages installed:
#	| wl-clipboard |	| xsel |	| xclip |


#Move the two configuration files to home folder

	mv .* $HOME/

	mv create_new_bash_script.sh $HOME/Documents/scripts

	chmod +x $HOME/Documents/scripts/create_new_bash_script.sh

	source $HOME/.bash_aliases

	echo "La comedia è finita"
