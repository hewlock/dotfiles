function header {
	echo ""
	echo ""
	echo "[\033[0;32mINSTALL\033[0m] $1"
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