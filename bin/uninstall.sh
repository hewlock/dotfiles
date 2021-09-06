#!/bin/bash

source bin/include.sh

backup_gsettings

unlink bash
unlink emacs
unlink git
unlink tmux
unlink vim

uninstall curl
uninstall emacs
uninstall fortune
uninstall stow
uninstall tmux
uninstall tree
uninstall vim

cmd "rm ~/.bash_aliases"
cmd "rm ~/bin"
