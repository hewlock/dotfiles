#!/bin/bash

source bin/include.sh

backup_gsettings

install curl
install emacs
install fortune
install gnome-disk-utility
install gnome-system-monitor
install keepassxc
install stow
install tmux
install tree
install vim

install "ubuntu-restricted-extras ttf-mscorefonts-installer-"

link bash
link emacs
link git
link tmux
link vim

cmd "echo \"source ~/.bash_override\" > ~/.bash_aliases"
cmd "vim +PlugInstall +qall"

source bin/elementary.sh
source bin/brave.sh
