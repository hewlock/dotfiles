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

function git_color {
	local git_status="$(git status 2> /dev/null)"
	if [[ ! $git_status =~ "working tree clean" ]]; then
		echo -e "\033[0;31;47m"
	elif [[ $git_status =~ "branch is ahead of" ]]; then
		echo -e "\033[0;34;47m"
	fi
}

function git_branch {
	local git_status="$(git status 2> /dev/null)"
	local on_branch="On branch ([^${IFS}]*)"
	local on_commit="HEAD detached at ([^${IFS}]*)"
	if [[ $git_status =~ $on_branch ]]; then
		local branch=${BASH_REMATCH[1]}
		echo " ($branch)"
	elif [[ $git_status =~ $on_commit ]]; then
		local commit=${BASH_REMATCH[1]}
		echo " ($commit)"
	fi
}

PS1='\[\033[01;32;47m\]\u\[\033[00;47m\]\[$(git_color)\]$(git_branch) \[\033[0;00;47m\]\w \$\[\033[00m\] '

alias emacs='TERM=xterm-16color emacs --no-window-system'
alias ls='ls $LS_OPTIONS'

fortune -as
echo ""
