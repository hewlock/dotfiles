function info {
	echo -e "[\033[0;32mINFO\033[0m] $1"
}

function cmd {
	info "$1"
	eval "$1"
}

function install {
	cmd "sudo apt install $1 --assume-yes"
}

function uninstall {
	cmd "sudo apt remove $1 --assume-yes"
}

function link {
	cmd "stow -v $1"
}

function unlink {
	cmd "stow -vD $1"
}
