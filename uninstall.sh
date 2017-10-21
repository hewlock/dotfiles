#!/bin/bash

source include.sh

unlink apollo
unlink bash
unlink emacs
unlink git
unlink powerline
unlink tmux
unlink vim

unlinkapps emacs
unlinkapps macvim

caskuninstall java

uninstall ack
uninstall emacs
uninstall fortune
uninstall git
uninstall macvim
uninstall node
uninstall python
uninstall stow
uninstall the_silver_searcher
uninstall tmux
uninstall tree

info homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"

fontuninstall roboto/roboto-mono.txt
