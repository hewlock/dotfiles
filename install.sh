#!/bin/bash

source include.sh

# required order
#sh homebrew/install.sh install
#sh bash/install.sh install

install ack
install "emacs --with-cocoa"
install fortune
install git
install "macvim --with-override-system-vim"
install python
install stow
install tmux
install tree

linkapps emacs
linkapps macvim

cmd "pip install --upgrade pip"
cmd "pip install powerline-status"

#caskinstall java

# sorted order
link apollo
link emacs
link git
link powerline
link tmux
link vim
link vimperator

fontinstall roboto/roboto-mono.txt
