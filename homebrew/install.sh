#!/bin/bash

echo ""
echo "[\033[0;32mINFO\033[0m] install homebrew"

if ! type brew 2>/dev/null; then
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "[\033[0;32mINFO\033[0m] brew update"
brew update

echo "[\033[0;32mINFO\033[0m] link full xcode"
sudo xcode-select -s /Applications/Xcode.app/Contents/Developer
