#!/bin/bash

source functions.sh

header fonts
# Fonts from:
# https://github.com/google/fonts
# https://github.com/powerline/fonts
if [ "$1" = "install" ]; then
	cmd "cp fonts/*/*.ttf /Library/Fonts/"
else
	cmd "rm /Library/Fonts/Roboto*"
fi
