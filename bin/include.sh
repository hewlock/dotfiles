#!/bin/bash

##############################
# Helper Functions
##############################

function info {
	echo -e "[\033[0;32mINFO\033[0m] $1"
}

function error {
	echo -e "[\033[0;31mERROR\033[0m] $1"
}

function cmd {
	info "$1"
	eval "$1"
}

##############################
# Distro Detection
##############################

OS_NAME=`hostnamectl | grep "Operating System:" | cut -d ":" -f 2 | awk '{$1=$1};1' | cut -d " " -f 1 | tr [:upper:] [:lower:]`
info "OS Detected: $OS_NAME"

if [[ $OS_NAME != "elementary" && $OS_NAME != "fedora" ]]; then
	error "Unsupported OS"
	exit 1
fi

##############################
# Distro Functions
##############################

function install {
	case $OS_NAME in
		elementary)
			cmd "sudo apt install $1 --assume-yes"
			;;
		fedora)
			cmd "sudo dnf install $1 --assumeyes"
			;;
	esac
}

function update {
	case $OS_NAME in
		elementary)
			cmd "sudo apt update --assume-yes"
			cmd "sudo apt upgrade --assume-yes"
			cmd "sudo apt autoremove --assume-yes"
			;;
		fedora)
			cmd "sudo dnf upgrade --assumeyes"
			cmd "sudo dnf autoremove --assumeyes"
			;;
	esac
}