#!/bin/bash

source include.sh

# sorted order
#sh emacs/install.sh remove
#sh git/install.sh remove
#sh powerline/install.sh remove
unlink apollo
unlink tmux
unlink vim
unlink vimperator

unlinkapps macvim

uninstall ack
uninstall fortune
uninstall macvim
uninstall stow
uninstall tmux
uninstall tree

#caskuninstall java

# required order
#sh bash/install.sh remove
#sh homebrew/install.sh remove

fontuninstall roboto/roboto-mono.txt
