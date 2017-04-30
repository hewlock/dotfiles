#!/bin/bash 
source functions.sh

header homebrew

if [ "$1" = "install" ]; then
	if ! type brew 2>/dev/null; then
		info "run installer"
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	else
		info "homebrew already installed"
	fi
	cmd "brew update"
else
	if type brew 2>/dev/null; then
		info "run uninstaller"
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"
	else
		info "homebrew not found"
	fi
fi
