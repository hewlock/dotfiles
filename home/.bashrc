# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

for file in $HOME/.bashrc.d/*;
do
	source "$file"
done
