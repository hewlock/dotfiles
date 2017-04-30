#!/bin/bash

source functions.sh

header powerline

if [ "$1" = "install" ]; then
	install "python"
	cmd "pip install --upgrade pip"
	cmd "pip install powerline-status"
	link $(pwd)/powerline/config ~/.config/powerline
else
	uninstall "python"
	unlink ~/.config/powerline
fi
