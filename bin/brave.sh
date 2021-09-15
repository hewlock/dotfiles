#!/bin/bash

source bin/include.sh

info "Install Brave Browser see: https://brave.com/linux/"

install apt-transport-https
install curl

cmd "sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg"
cmd "echo \"deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main\"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list"

source bin/update.sh

install brave-browser
