#!/bin/bash

echo ""
echo "[\033[0;32mINFO\033[0m] install tmux"

if [ -e ~/.tmux.conf ]; then
	echo "[\033[0;32mINFO\033[0m] remove ~/.tmux.conf"
	rm ~/.tmux.conf
fi

echo "[\033[0;32mINFO\033[0m] link ~/.tmux.conf"
ln -s $(pwd)/tmux/.tmux.conf ~/.tmux.conf

brew install tmux
