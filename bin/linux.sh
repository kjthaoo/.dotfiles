#!/bin/bash

#using redirection append any output from echo statemetns to a file called "linuxsetup.log".
echo "linux.sh" >> linuxsetup.log

#Check the operating system type is "Linux".
# uname -s
Linux

#if uname doesn't equal "Linux" then script shows an error to the "linuxsetup.log and then run the exit command. (if-else statement)
if [[ $(uname) == "Linux" ]]; then 
	echo "The Operating system type is "Linux""
else
	echo "Error message" >> linuxsetup.log
	exit 1
fi

#Create Trash directory
mkdir Trash

#rename the ".vimrc" file to ".bup_vimrc". Then echo that the current file changed.
mv .vimrc .bup_vimrc
echo "The current ".vimrc" file was changed to ".bup_vimrc"."

#redirect the contents of the etc/vimrc file to a file called ".vimrc" in home directory.
sudo cat /etc/vimrc > ~/.vimrc

#add the statement "source ~/.dotfiles/etc/bashrc_custom" to the end of the .bashrc file located in the home directory.
echo 'source ~/.dotfile/etc/bashrc custom' >> ~/.bashrc
