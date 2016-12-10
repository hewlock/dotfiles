#!/bin/bash

source functions.sh

header tmux
link $(pwd)/tmux/.tmux.conf ~/.tmux.conf
install tmux
