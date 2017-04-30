#!/bin/bash

source include.sh

# sorted order
unlink apollo
unlink emacs
unlink git
unlink powerline
unlink tmux
unlink vim
unlink vimperator

unlinkapps emacs
unlinkapps macvim

uninstall ack
uninstall emacs
uninstall fortune
uninstall git
uninstall macvim
uninstall python
uninstall stow
uninstall tmux
uninstall tree

#caskuninstall java

# required order
#sh bash/install.sh remove
#sh homebrew/install.sh remove

fontuninstall roboto/roboto-mono.txt
