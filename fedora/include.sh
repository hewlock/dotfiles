function info {
	echo -e "[\033[0;32mINFO\033[0m] $1"
}

function cmd {
	info "$1"
	eval "$1"
}

function update {
	cmd "dnf -y upgrade"
}

function install {
	cmd "dnf -y install $1"
}

function uninstall {
	cmd "dnf -y remove $1"
}

function link {
	cmd "stow -v $1"
}

function unlink {
	cmd "stow -vD $1"
}

function fontinstall {
	URL=$(head -n 1 "$1")
	mkdir -p /usr/share/fonts/$2
	tail -n +2 "$1" | while read FONT; do
		info "$FONT"
		pushd /usr/share/fonts/$2 > /dev/null
		sudo curl -# -o "$FONT" $URL${FONT//" "/"%20"}
		popd > /dev/null
	done
}

function fontuninstall {
	tail -n +2 "$1" | while read FONT; do
		info "$FONT"
		pushd /usr/share/fonts/$2 > /dev/null
		sudo rm "$FONT"
		popd > /dev/null
	done
}
