#!/bin/bash

echo ""
echo "[\033[0;32mINFO\033[0m] install bash"

echo "[\033[0;32mINFO\033[0m] link .bash_profile"
ln -s $(pwd)/bash/.bash_profile ~

echo "[\033[0;32mINFO\033[0m] brew install tree"
brew install tree
