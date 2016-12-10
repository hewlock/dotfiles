#!/bin/bash

source functions.sh

header bash

link $(pwd)/bash/.bash_profile ~/.bash_profile

cmd "touch ~/.bash_env"
cmd "touch ~/.hushlogin"

install ack
install fortune
install tree

cmd "brew cask install java"
cmd "brew cask update java"
