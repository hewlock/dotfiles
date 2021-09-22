#!/bin/bash

source bin/include.sh

backup_gsettings

install curl
install emacs
install fortune
install gcc
install gnome-disk-utility
install gnome-system-monitor
install keepassxc
install libsecret-1-0
install libsecret-1-dev
install make
install stow
install tmux
install tree
install vim

install "ubuntu-restricted-extras ttf-mscorefonts-installer-"

# Git credential helper
# https://stackoverflow.com/a/40312117
cmd "sudo make --directory=/usr/share/doc/git/contrib/credential/libsecret"

link bash
link emacs
link git
link tmux
link vim

cmd "echo \"source ~/.bash_override\" > ~/.bash_aliases"
cmd "vim +PlugInstall +qall"

source bin/elementary.sh
source bin/brave.sh
