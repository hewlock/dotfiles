case $- in
    *i*) ;;
      *) return;;
esac

shopt -s checkwinsize
shopt -s histappend

HISTCONTROL=ignoreboth
HISTFILESIZE=2000
HISTSIZE=1000

source ~/.LESS_TERMCAP
eval $(dircolors -b ~/.dircolors)
export LS_OPTIONS='--color=auto'

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

alias emacs='TERM=xterm-16color emacs --no-window-system'
alias ls='ls $LS_OPTIONS'

fortune -as
echo ""
