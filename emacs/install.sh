#!/bin/bash

source functions.sh

header emacs
link $(pwd)/emacs/.emacs.d ~/.emacs.d
install "emacs --with-cocoa"
cmd "brew linkapps"
