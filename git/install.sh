#!/bin/bash

echo ""
echo "[\033[0;32mINFO\033[0m] install git"

brew install git

git config --global alias.co checkout
git config --global credential.helper osxkeychain
git config --global user.email matthew.moulton@gmail.com
git config --global user.name "Matthew Moulton"
