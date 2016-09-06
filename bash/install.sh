#!/bin/bash

echo ""
echo "[\033[0;32mINFO\033[0m] install bash"

if [ -e ~/.bash_profile ]; then
	echo "[\033[0;32mINFO\033[0m] remove ~/.bash_profile"
	rm ~/.bash_profile
fi

echo "[\033[0;32mINFO\033[0m] link .bash_profile"
ln -s $(pwd)/bash/.bash_profile ~

echo "[\033[0;32mINFO\033[0m] brew install tree"
brew install tree

echo "[\033[0;32mINFO\033[0m] brew install fortune"
brew install fortune

echo "[\033[0;32mINFO\033[0m] touch ~/.hushlogin"
touch ~/.hushlogin
