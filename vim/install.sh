#!/bin/bash

echo ""
echo "[\033[0;32mINFO\033[0m] install vim"

if [ -e ~/.vimrc ]; then
	echo "[\033[0;32mINFO\033[0m] remove ~/.vimrc"
	rm ~/.vimrc
fi

echo "[\033[0;32mINFO\033[0m] link ~/.vimrc"
ln -s $(pwd)/vim/.vimrc ~/.vimrc

if [ -e ~/.vim ]; then
	echo "[\033[0;32mINFO\033[0m] remove ~/.vim"
	rm ~/.vim
fi

echo "[\033[0;32mINFO\033[0m] link ~/.vim"
ln -s $(pwd)/vim/.vim ~/.vim

brew install macvim --with-override-system-vim
brew linkapps
