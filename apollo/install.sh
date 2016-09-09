#!/bin/bash

source functions.sh

header apollo

if [ -e ~/.apollo ]; then
	cmd "rm ~/.apollo"
fi
cmd "ln -s $(pwd)/apollo/.apollo ~"

