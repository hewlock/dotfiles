#!/bin/bash

source functions.sh

header bash

if [ -e ~/.bash_profile ]; then
	cmd "rm ~/.bash_profile"
fi
cmd "ln -s $(pwd)/bash/.bash_profile ~"

cmd "touch ~/.bash_env"
cmd "touch ~/.hushlogin"

install ack
install fortune
install tree

cmd "brew cask install java"
cmd "brew cask update java"
