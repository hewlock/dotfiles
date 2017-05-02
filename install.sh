#!/bin/bash

source include.sh

info homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

install ack
install "emacs --with-cocoa"
install fortune
install git
install "macvim --with-override-system-vim"
install node
install python
install stow
install tmux
install tree

caskinstall java

cmd "pip install --upgrade pip"
cmd "pip install powerline-status"

linkapps emacs
linkapps macvim

link apollo
link bash
link emacs
link git
link powerline
link tmux
link vim
link vimperator

fontinstall roboto/roboto-mono.txt
