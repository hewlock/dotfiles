export LSCOLORS="dxcxcxdxbxegedabagacad"
export PATH="/usr/local/bin:$PATH"

# prevent tmux 2.2 errors from displaying
export EVENT_NOKQUEUE=1

# prevent zsh warning message in MacOS Catalina
export BASH_SILENCE_DEPRECATION_WARNING=1

alias emacs='TERM=xterm-16color emacs --no-window-system'
alias idea='open -a "Intellij Idea" .'
alias la='ls -AGh'
alias ll='ls -AGhl'
alias ls='ls -Gh'

fortune -as
echo ""

export JDK_HOME=`/usr/libexec/java_home -v 1.8`
export JAVA_HOME=$JDK_HOME

source $(pip3 show powerline-status | grep Location: | cut -c11-)/powerline/bindings/bash/powerline.sh
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"
