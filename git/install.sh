git config --global alias.co checkout
git config --global color.diff.meta "green bold"
git config --global core.commentchar "$"
git config --global core.editor vim
git config --global diff.tool vimdiff
git config --global merge.conflictstyle diff3
git config --global merge.tool vimdiff
git config --global push.default simple
git config --global user.name "Matthew Moulton"

OS_KERNEL=$(uname -s)
if [ "$OS_KERNEL" = "Darwin" ]; then
	git config --global credential.helper osxkeychain
else
	git config --global credential.helper cache
fi
