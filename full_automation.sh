#!/bin/bash

#This script creates configuration files for tmux, Vim, and aliases for DEBIAN based systems
		
	#Make sure you are on home directory

	cd $HOME

	#Create TWO new directories (in case they don't exist)

	mkdir -p $HOME/Documents/scripts $HOME/Documents/logs

	#Script to update ubuntu and remove old configuration files cleaning

	wget https://raw.githubusercontent.com/tenorediforza/bash_scripts/refs/heads/main/updates -O ->> updates

	#Download the configuration file for keyboard shortcuts with gnome in Ubunutu

	wget https://raw.githubusercontent.com/tenorediforza/configurations/refs/heads/main/custom.txt -O ->> custom.txt

	#Load keyboad binding file configuration

	cat custom.txt | dconf load /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/

	#Download script to install rustdesk

	wget https://raw.githubusercontent.com/tenorediforza/bash_scripts/refs/heads/main/install_rustdesk -O ->> install_rustdesk

	#Download script to configure rustdesk

	wget https://raw.githubusercontent.com/tenorediforza/bash_scripts/refs/heads/main/config_rustdesk -O ->> config_rustdesk

	#Download script to update an installed version of Rustdesk

	wget https://raw.githubusercontent.com/tenorediforza/bash_scripts/refs/heads/main/rustdesk_update_script -O ->> rustdesk_update_script

#Add respective lines to .bash_aliases
	wget https://raw.githubusercontent.com/tenorediforza/configurations/refs/heads/main/bash_aliases -O ->> .bash_aliases

#Add respective lines to .tmux.conf file
	wget https://raw.githubusercontent.com/tenorediforza/configurations/refs/heads/main/tmux.conf -O ->> .tmux.conf

#Add respective lines to .vimrc file

	wget https://raw.githubusercontent.com/tenorediforza/configurations/refs/heads/main/vimrc -O ->> .vimrc

#Make update script executable

	chmod +x updates install_rustdesk config_rustdesk rustdesk_update_script  

#Download bash_script_creator

wget https://raw.githubusercontent.com/tenorediforza/bash_scripts/refs/heads/main/create_new_bash_script.sh > $HOME/Documents/scripts/create_new_bash_script.sh

#NOTE:Copy and paste from clipboard feature in VIM. Make sure you have these packages installed:
#	| wl-clipboard |	| xsel |	| xclip |

#Install basic progrmas

	sudo apt install -y tmux vim curl

	mv create_new_bash_script.sh full_automation.sh updates install_rustdesk config_rustdesk rustdesk_update_script $HOME/Documents/scripts

	rm ~/custom.txt 2>/dev/null

	chmod +x $HOME/Documents/scripts/create_new_bash_script.sh

	echo "source $HOME/.bash_aliases"

	echo "La comedia è finita"
