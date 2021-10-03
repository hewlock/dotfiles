#!/bin/bash

source bin/include.sh 

##############################
# Backup Configuration
##############################

cmd "mkdir -p ~/.gsettings.backup"
cmd "gsettings list-recursively | sort > ~/.gsettings.backup/$(date --iso-8601=ns).txt"

##############################
# Install
##############################

update

install curl
install emacs
install fortune-mod
install gcc
install gnome-disk-utility
install gnome-system-monitor
install gnome-terminal
install make
install neofetch
install rsync
install stow
install tmux
install tree
install vim

cmd "stow -v -t ~ home"

cmd "vim +PlugInstall +qall"

source bin/$OS_NAME.sh

source bin/gnome-terminal.sh
source bin/gnome.sh
