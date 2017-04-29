#!/bin/bash

source functions.sh

if [ "$1" = "remove" ]; then
	# sorted order
	sh vim/install.sh remove
	sh apollo/install.sh remove
	sh vimperator/install.sh remove

	# required order
else
	# required order
	# sh homebrew/install.sh install
	# sh bash/install.sh install

	# sorted order
	sh apollo/install.sh install
	sh vim/install.sh install
	sh vimperator/install.sh install
	# sh emacs/install.sh install
	# sh fonts/install.sh install
	# sh git/install.sh install
	# sh powerline/install.sh install
	# sh tmux/install.sh install
fi
