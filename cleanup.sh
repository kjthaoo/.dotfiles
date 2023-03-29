#!/bin/bash

#remove the vimrc file in the home directory
rm ~/.vimrc

#remove line 'source ~/.dotfiles/bashrc custom' in the bashrc file in the home directory. Using the sed command.
sed -i 'source ~\/.dotfiles\/bashrc custom\d' ~/.bashrc

#remove the trash directory inside the home directory
rm ~/.TRASH
