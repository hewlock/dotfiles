#!/bin/bash

source functions.sh

header vim
link $(pwd)/vim/.vim ~/.vim
link $(pwd)/vim/.vimrc ~/.vimrc
install "macvim --with-override-system-vim"
cmd "brew linkapps"
