#!/bin/bash

source macos/include.sh

unlink apollo
unlink bash-macos
unlink emacs
unlink powerline
unlink tmux
unlink vim

cmd "rm ~/.gitconfig"

unlinkapps emacs
unlinkapps macvim

caskuninstall java8

uninstall emacs
uninstall fortune
uninstall git
uninstall macvim
uninstall node
uninstall python
uninstall stow
uninstall tmux
uninstall tree

info homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"

fontuninstall fonts/font-awesome.txt
fontuninstall fonts/roboto-condensed.txt
fontuninstall fonts/roboto-mono.txt
fontuninstall fonts/roboto-slab.txt
fontuninstall fonts/roboto.txt
