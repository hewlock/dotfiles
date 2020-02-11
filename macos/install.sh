#!/bin/bash

source macos/include.sh

info homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/versions

install fortune
install macvim
install node
install python
install stow
install tmux
install tree

caskinstall emacs
caskinstall java

cmd "pip3 install --upgrade pip"
cmd "pip3 install powerline-status"
cmd "source git/install.sh"

linkapps emacs
linkapps macvim

link apollo
link bash-macos
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
