#!/bin/bash

function info {
	echo -e "[\033[0;32mINFO\033[0m] $1"
}

function error {
	echo -e "[\033[0;31mERROR\033[0m] $1"
}

function backup_dir {
	SOURCE_DIR=$1
	TARGET_DIR=$2
	LOCK_FILE="$TARGET_DIR/.in-progress"
	TIMESTAMP=`date "+%Y-%m-%dT%H-%M-%S"`

	if [ ! -d "$SOURCE_DIR" ]; then
		error "source directory $SOURCE_DIR does not exist"
		return 1
	fi

	if [ ! -d "$TARGET_DIR" ]; then
		error "target directory $TARGET_DIR does not exist"
		return 1
	fi

	if [ -f "$LOCK_FILE" ]; then
		error "backup in progress to $TARGET_DIR"
		return 1
	fi

	echo "$TIMESTAMP" > $LOCK_FILE
	info "sync $SOURCE_DIR -> $TARGET_DIR/$TIMESTAMP"
	rsync -aPh --delete --link-dest=$TARGET_DIR/current $SOURCE_DIR/ $TARGET_DIR/$TIMESTAMP
	rm $LOCK_FILE

	if [ "$?" = 0 ]; then
		rm -f $TARGET_DIR/current
		ln -s $TARGET_DIR/$TIMESTAMP $TARGET_DIR/current
	else
		error "sync failed"
		mv $TARGET_DIR/$TIMESTAMP $TARGET_DIR/failed-$TIMESTAMP
		return 1
	fi

	info "sync success"
	return 0
}

function backup_users {
	RESULT=0
	for SOURCE_DIR in /home/*; do
		USER="$(basename $SOURCE_DIR)"
		TARGET_DIR=$1/$USER
		mkdir -p $TARGET_DIR
		backup_dir $SOURCE_DIR $TARGET_DIR
		if [ "$?" != 0 ]; then
			RESULT=1
		fi
	done
	return $RESULT
}

BACKUP_DIRS=""
for TARGET_DIR in "$@"; do
	if [ -d "$TARGET_DIR" ]; then
		backup_users $TARGET_DIR
		if [ "$?" = 0 ]; then
			BACKUP_DIRS="$BACKUP_DIRS $TARGET_DIR"
		fi
	else
		info "backup location $TARGET_DIR does not exist"
	fi
done

if [ -z "$BACKUP_DIRS" ]; then
	error "backup failed"
	for SOURCE_DIR in /home/*; do
		USER="$(basename $SOURCE_DIR)"
		USER_ID=$(id -u $USER)
		sudo -u $USER DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$USER_ID/bus notify-send --icon=appointment-missed "Rsync Backup" "Backup failed"
	done
else
	info "backup complete to:$BACKUP_DIRS"
fi

