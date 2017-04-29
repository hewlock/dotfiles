#!/bin/bash

source functions.sh

header apollo

if [ "$1" = "install" ]; then
	link $(pwd)/apollo/.apollo ~/.apollo
else
	unlink ~/.apollo
fi
