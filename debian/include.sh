function info {
	echo -e "[\033[0;32mINFO\033[0m] $1"
}

function cmd {
	info "$1"
	eval "$1"
}

function update {
	cmd "sudo apt-get update"
}

function upgrade {
	cmd "sudo apt-get upgrade"
}

function install {
	cmd "sudo apt-get install $1 --assume-yes"
}

function remove {
	cmd "sudo apt-get remove $1 --assume-yes"
}

function link {
	cmd "stow -v $1"
}

function unlink {
	cmd "stow -vD $1"
}

function fontinstall {
	URL=$(head -n 1 "$1")
	mkdir -p /usr/local/share/fonts
	tail -n +2 "$1" | while read FONT; do
		info "$FONT"
		pushd /usr/local/share/fonts > /dev/null
		sudo curl -# -o "$FONT" $URL${FONT//" "/"%20"}
		popd > /dev/null
	done
}

function fontuninstall {
	tail -n +2 "$1" | while read FONT; do
		info "$FONT"
		pushd /usr/local/share/fonts > /dev/null
		sudo rm "$FONT"
		popd > /dev/null
	done
}
