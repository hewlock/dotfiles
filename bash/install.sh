#!/bin/bash

source functions.sh

header bash

if [ "$1" = "install" ]; then
	link $(pwd)/bash/.bash_profile ~/.bash_profile

	cmd "touch ~/.bash_env"
	cmd "touch ~/.hushlogin"
else
	unlink ~/.bash_profile

	cmd "touch ~/.bash_env"
	cmd "touch ~/.hushlogin"
fi

