#!/bin/bash

function info {
	echo -e "[\033[0;32mINFO\033[0m] $1"
}

function notify {
	info "$1"
	notify-send --icon=appointment "Incremental Backup" "$1"
}

function error {
	notify-send --icon=appointment-missed "Incremental Backup" "$1"
	echo -e "[\033[0;31mERROR\033[0m] $1"
}

SOURCE_DIR=$1
TARGET_DIR=$2
CURRENT_DIR="$TARGET_DIR/current"
LOCK_FILE="$TARGET_DIR/.in-progress"
TIMESTAMP=`date "+%Y-%m-%dT%H-%M-%S"`

if [ ! -d "$SOURCE_DIR" ]; then
	error "Source directory \"$SOURCE_DIR\" does not exist"
	exit 1
fi

if [ ! -d "$TARGET_DIR" ]; then
	error "Target directory \"$TARGET_DIR\" does not exist"
	exit 1
fi

if [ -f "$LOCK_FILE" ]; then
	error "Backup still in progress to \"$TARGET_DIR\""
	exit 1
fi

echo "$TIMESTAMP" > $LOCK_FILE
info "Sync $SOURCE_DIR -> $TARGET_DIR/$TIMESTAMP"
rsync -aPh --delete --link-dest=$TARGET_DIR/current $SOURCE_DIR/ $TARGET_DIR/$TIMESTAMP
rm $LOCK_FILE

if [ "$?" = 0 ]; then
	if [ -e $CURRENT_DIR ]; then
		rm -f $TARGET_DIR/current
		info "Backup complete to \"$TARGET_DIR\""
	else
		notify "Initial backup complete to \"$TARGET_DIR\""
	fi
	
	ln -s $TARGET_DIR/$TIMESTAMP $TARGET_DIR/current
else
	error "rsync failed to sync to \"$TARGET_DIR\""
	mv $TARGET_DIR/$TIMESTAMP $TARGET_DIR/failed-$TIMESTAMP
	exit 1
fi
