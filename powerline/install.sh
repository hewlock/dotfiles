#!/bin/bash

source functions.sh

header powerline

install python
cmd "pip install --upgrade pip"
cmd "pip install powerline-status"
link $(pwd)/powerline/config ~/.config/powerline
