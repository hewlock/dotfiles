#!/bin/bash

source functions.sh

header emacs

if [ -e ~/.emacs.d ]; then
	cmd "rm ~/.emacs.d"
fi

cmd "ln -s $(pwd)/emacs/.emacs.d ~/.emacs.d"

install "emacs"
cmd "brew linkapps"
