#!/bin/bash

source functions.sh

header git

install git

function gitconfig {
	cmd "git config --global $1"
}

gitconfig "alias.co checkout"
gitconfig "credential.helper osxkeychain"
gitconfig "user.email matthew.moulton@gmail.com"
gitconfig "user.name \"Matthew Moulton\""
gitconfig "push.default simple"
gitconfig "core.editor $(which vim)"
