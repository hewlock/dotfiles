#!/bin/bash

source functions.sh

header tmux

if [ "$1" = "install" ]; then
	link $(pwd)/tmux/.tmux.conf ~/.tmux.conf
	install "tmux"
else
	uninstall "tmux"
	unlink ~/.tmux.conf
fi
