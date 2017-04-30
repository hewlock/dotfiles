function header {
	echo ""
	echo "[\033[0;32mPROCESS\033[0m] $1"
}

function info {
	echo "[\033[0;32mINFO\033[0m] $1"
}

function cmd {
	info "$1"
	eval "$1"
}

function install {
	cmd "brew install $1"
	cmd "brew upgrade $1"
}

function uninstall {
	cmd "brew uninstall $1"
}

function linkapps {
	cmd "brew linkapps $1"
}

function unlinkapps {
	cmd "brew unlinkapps $1"
}

function unlink {
	cmd "rm $1"
}

function link {
	if [ -e $2 ]; then
		unlink $2
	fi
	cmd "ln -s $1 $2"
}
