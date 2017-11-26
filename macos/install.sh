#!/bin/bash

source macos/include.sh

info homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

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

cmd "pip2 install --upgrade pip"
cmd "pip2 install powerline-status"

linkapps emacs
linkapps macvim

link apollo
link bash
link emacs
link git
link powerline
link tmux
link vim

fontinstall fonts/font-awesome.txt
fontinstall fonts/roboto-condensed.txt
fontinstall fonts/roboto-mono.txt
fontinstall fonts/roboto-slab.txt
fontinstall fonts/roboto.txt