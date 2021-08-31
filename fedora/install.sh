#!/bin/bash

source fedora/include.sh

# update

install emacs
install fortune-mod
install stow
install tmux
install tree
install vim

cmd "vim +'PlugInstall --sync' +qa"
cmd "source git/install.sh"

# link bash-macos
link emacs
link git
link tmux
link vim

# TODO: Inter?
# fontinstall fonts/font-awesome.txt
fontinstall fonts/roboto-condensed.txt roboto-condensed
fontinstall fonts/roboto-mono.txt roboto-mono
fontinstall fonts/roboto-slab.txt roboto-slab
fontinstall fonts/roboto.txt roboto

