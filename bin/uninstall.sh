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
uninstall gnome-disk-utility
uninstall keepassxc
uninstall stow
uninstall tmux
uninstall tree
uninstall vim

uninstall ubuntu-restricted-extras

cmd "rm ~/.bash_aliases"
cmd "rm ~/bin"
