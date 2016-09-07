#!/bin/bash

source functions.sh

header vim

if [ -e ~/.vimrc ]; then
	cmd "rm ~/.vimrc"
fi
if [ -e ~/.vim ]; then
	cmd "rm ~/.vim"
fi

cmd "ln -s $(pwd)/vim/.vim ~/.vim"
cmd "ln -s $(pwd)/vim/.vimrc ~/.vimrc"
install "macvim --with-override-system-vim"
cmd "brew linkapps"
