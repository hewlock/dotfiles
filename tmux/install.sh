#!/bin/bash

source functions.sh

header tmux

if [ -e ~/.tmux.conf ]; then
	cmd "rm ~/.tmux.conf"
fi

cmd "ln -s $(pwd)/tmux/.tmux.conf ~/.tmux.conf"
install tmux
