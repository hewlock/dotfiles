#!/bin/bash

source functions.sh

header powerline

install python
cmd "pip install powerline-status"

if [ -e ~/.config/powerline ]; then
	cmd "rm ~/.config/powerline"
fi
cmd "ln -s $(pwd)/powerline/config ~/.config/powerline"
