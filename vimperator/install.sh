#!/bin/bash

source functions.sh

header vimperator

if [ "$1" = "install" ]; then
	link $(pwd)/vimperator/.vimperatorrc ~/.vimperatorrc
else
	unlink ~/.vimperatorrc
fi
