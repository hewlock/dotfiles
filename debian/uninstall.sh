#!/bin/bash

source debian/include.sh

unlink bash-linux
unlink emacs
unlink tmux
unlink vim

cmd "mv ~/.bashrc.backup ~/.bashrc"
cmd "mv ~/.profile.backup ~/.profile"

remove curl
remove emacs
remove fortune
remove git
remove stow
remove tmux
remove tree
remove vim

fontuninstall fonts/font-awesome.txt
fontuninstall fonts/roboto-condensed.txt
fontuninstall fonts/roboto-mono.txt
fontuninstall fonts/roboto-slab.txt
fontuninstall fonts/roboto.txt
