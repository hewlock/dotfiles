#!/bin/bash

source functions.sh

header emacs
link $(pwd)/emacs/.emacs.d ~/.emacs.d
install "emacs"
cmd "brew linkapps"
