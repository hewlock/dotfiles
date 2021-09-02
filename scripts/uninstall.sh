#!/bin/bash

source scripts/include.sh

unlink bash
unlink emacs
unlink git
unlink tmux
unlink vim

# cmd "mv ~/.bashrc.backup ~/.bashrc"
# cmd "mv ~/.profile.backup ~/.profile"

uninstall curl
uninstall emacs
uninstall fortune
uninstall stow
uninstall tmux
uninstall tree
uninstall vim

cmd "rm ~/.bash_aliases"
