#!/bin/bash

cmd "echo \"source ~/.bash_init\" > ~/.bash_aliases"

## Git credential helper
## https://stackoverflow.com/a/40312117
install libsecret-1-0
install libsecret-1-dev
cmd "sudo make --directory=/usr/share/doc/git/contrib/credential/libsecret"
cmd "git config --global credential.helper \"/usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret\""

source bin/install/elementary-terminal.sh
