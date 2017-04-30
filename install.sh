#!/bin/bash

source include.sh

# required order
#sh homebrew/install.sh install
#sh bash/install.sh install

install "macvim --with-override-system-vim"
install ack
install fortune
install stow
install tmux
install tree

linkapps macvim

#caskinstall java

# sorted order
#sh emacs/install.sh install
#sh git/install.sh install
#sh powerline/install.sh install
link apollo
link tmux
link vim
link vimperator

fontinstall roboto/roboto-mono.txt
