#!/bin/bash

source include.sh

# sorted order
unlink apollo
unlink bash
unlink emacs
unlink git
unlink powerline
unlink tmux
unlink vim
unlink vimperator

unlinkapps emacs
unlinkapps macvim

caskuninstall java

uninstall ack
uninstall emacs
uninstall fortune
uninstall git
uninstall macvim
uninstall python
uninstall stow
uninstall tmux
uninstall tree

info homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"

fontuninstall roboto/roboto-mono.txt
