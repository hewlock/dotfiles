case $- in
    *i*) ;;
      *) return;;
esac

shopt -s checkwinsize
shopt -s histappend

HISTCONTROL=ignoreboth
HISTFILESIZE=2000
HISTSIZE=1000

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

alias emacs='TERM=xterm-16color emacs --no-window-system'
alias ls='ls --color=auto'

fortune -as
echo ""
