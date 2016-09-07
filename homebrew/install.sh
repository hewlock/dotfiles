#!/bin/bash 
source functions.sh

header homebrew

info "run installer"
if ! type brew 2>/dev/null; then
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

cmd "brew update"
