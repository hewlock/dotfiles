#!/bin/bash

source functions.sh

header vim

if [ "$1" = "install" ]; then
	link $(pwd)/vim/.vim ~/.vim
	link $(pwd)/vim/.vimrc ~/.vimrc
	install "macvim --with-override-system-vim"
	linkapps "macvim"
else
	unlinkapps "macvim"
	uninstall "macvim"
	unlink ~/.vim
	unlink ~/.vimrc
fi
