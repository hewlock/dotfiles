#!/bin/bash

source bin/include.sh

backup_gsettings

cmd "sudo apt upgrade --assume-yes"
