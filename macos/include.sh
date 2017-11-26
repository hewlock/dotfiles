function info {
	echo "[\033[0;32mINFO\033[0m] $1"
}

function cmd {
	info "$1"
	eval "$1"
}

function install {
	cmd "brew install $1"
}

function uninstall {
	cmd "brew uninstall $1"
}

function caskinstall {
	cmd "brew cask install $1"
}

function caskuninstall {
	cmd "brew cask uninstall $1"
}

function linkapps {
	cmd "brew linkapps $1"
}

function unlinkapps {
	cmd "brew unlinkapps $1"
}

function link {
	cmd "stow -v $1"
}

function unlink {
	cmd "stow -vD $1"
}

function fontinstall {
	URL=$(head -n 1 "$1")
	tail -n +2 "$1" | while read FONT; do
		info "$FONT"
		pushd ~/Library/Fonts > /dev/null
		curl -# -o "$FONT" $URL${FONT//" "/"%20"}
		popd > /dev/null
	done
}

function fontuninstall {
	tail -n +2 "$1" | while read FONT; do
		info "$FONT"
		pushd ~/Library/Fonts > /dev/null
		rm "$FONT"
		popd > /dev/null
	done
}
