#!/bin/bash

source functions.sh

header emacs

if [ "$1" = "install" ]; then
	link $(pwd)/emacs/.emacs.d ~/.emacs.d
	install "emacs --with-cocoa"
	linkapps "emacs"
else
	unlinkapps "emacs"
	uninstall "emacs"
	unlink ~/.emacs.d
fi
