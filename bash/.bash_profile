export LSCOLORS="dxcxcxdxbxegedabagacad"
export PATH="/usr/local/bin:$PATH"

alias la='ls -AGh'
alias ll='ls -AGhl'
alias ls='ls -Gh'

fortune -as
echo ""

source ~/.bash_env
source $(pip show powerline-status | grep Location: | cut -c11-)/powerline/bindings/bash/powerline.sh
