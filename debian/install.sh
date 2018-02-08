#!/bin/bash

source debian/include.sh

update

install curl
install emacs
install fortune
install git
install stow
install tmux
install tree
install vim

link emacs
link tmux
link vim

fontinstall fonts/font-awesome.txt
fontinstall fonts/roboto-condensed.txt
fontinstall fonts/roboto-mono.txt
fontinstall fonts/roboto-slab.txt
fontinstall fonts/roboto.txt
