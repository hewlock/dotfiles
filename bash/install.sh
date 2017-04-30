#!/bin/bash

source functions.sh

header bash

if [ "$1" = "install" ]; then
	link $(pwd)/bash/.bash_profile ~/.bash_profile

	cmd "touch ~/.bash_env"
	cmd "touch ~/.hushlogin"

	install ack
	install fortune
	install tree

	cmd "brew cask install java"
	cmd "brew cask update java"
else
	unlink ~/.bash_profile

	cmd "touch ~/.bash_env"
	cmd "touch ~/.hushlogin"

	uninstall ack
	uninstall fortune
	uninstall tree

	cmd "brew cask uninstall java"
fi

