#!/bin/bash

source debian/include.sh

remove emacs
remove fortune
remove git
remove stow
remove tmux
remove tree
remove vim

unlink emacs
unlink tmux
unlink vim
