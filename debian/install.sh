#!/bin/bash

source debian/include.sh

update

install curl
install emacs
install fortune
install git
install stow
install tmux
install tree
install vim

cmd "mv ~/.bashrc ~/.bashrc.backup"
cmd "mv ~/.profile ~/.profile.backup"
cmd "source git/install.sh"

link bash-linux
link emacs
link tmux
link vim

fontinstall fonts/font-awesome.txt
fontinstall fonts/roboto-condensed.txt
fontinstall fonts/roboto-mono.txt
fontinstall fonts/roboto-slab.txt
fontinstall fonts/roboto.txt

cmd "source gnome-terminal/solarized-base.sh"
cmd "source gnome-terminal/solarized-light.sh"
