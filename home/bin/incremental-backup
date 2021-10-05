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
LATEST_DIR="$TARGET_DIR/latest"
IN_PROGRESS_DIR="$TARGET_DIR/in-progress"
LOCK_FILE="$TARGET_DIR/.in-progress"

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

echo "$(date)" > $LOCK_FILE
info "Sync $SOURCE_DIR -> $TARGET_DIR"
rsync -aPh --delete --exclude "lost+found" --exclude ".Trash-*" --link-dest=$LATEST_DIR $SOURCE_DIR/ $IN_PROGRESS_DIR
RSYNC_STATUS="$?"

rm $LOCK_FILE

# 24 is vanished file error (cache and temp files do this a lot)
if [ "$RSYNC_STATUS" = 0 ] || [ "$RSYNC_STATUS" = 24 ]; then
	if [ -e $LATEST_DIR ]; then
		rm -f $LATEST_DIR
		notify "Backup complete to \"$TARGET_DIR\""
	else
		notify "Initial backup complete to \"$TARGET_DIR\""
	fi
	
	TIMESTAMP=$(date "+%Y-%m-%dT%H-%M-%S")
	mv $IN_PROGRESS_DIR $TARGET_DIR/$TIMESTAMP
	ln -s ./$TIMESTAMP $LATEST_DIR
else
	error "rsync failed to sync to \"$TARGET_DIR\""
	exit 1
fi
