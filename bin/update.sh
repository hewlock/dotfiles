#!/bin/bash

source bin/include.sh

backup_gsettings

cmd "sudo apt update --assume-yes"
cmd "sudo apt upgrade --assume-yes"
cmd "sudo apt autoremove --assume-yes"
