#!/bin/bash

source scripts/include.sh

install curl
install emacs
install fortune
install stow
install tmux
install tree
install vim

link bash
link emacs
link git
link tmux
link vim

cmd "echo \"source ~/.bash_override\" > ~/.bash_aliases"
cmd "vim +PlugInstall +qall"

source scripts/elementary.sh
