#!/bin/bash

source debian/include.sh

update

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
