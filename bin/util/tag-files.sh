#!/bin/bash

function error {
	notify-send --icon=appointment-missed "Tag Files" "$1"
	echo -e "[\033[0;31mERROR\033[0m] $1"
}

SOURCE_DIR=$1
TARGET_DIR=$2
TAG_PATTERN="\#[a-zA-Z0-9-]"

if [ ! -d "$SOURCE_DIR" ]; then
	error "Source directory \"$SOURCE_DIR\" does not exist"
	exit 1
fi

rm -rf $TARGET_DIR
mkdir -p $TARGET_DIR

if [ ! -d "$TARGET_DIR" ]; then
	error "Target directory \"$TARGET_DIR\" does not exist"
	exit 1
fi

FILES=$(find $SOURCE_DIR -name "*$TAG_PATTERN*" -type f -print)

OIFS="$IFS"
IFS=$'\n'
for FILE in $FILES; do
	NAME=$(basename $FILE)
	TAGS=$(echo $NAME | grep -o "$TAG_PATTERN*" | cut -c 2-)

	for TAG in $TAGS; do
		mkdir -p $TARGET_DIR/$TAG
		ln -s "$FILE" "$TARGET_DIR/$TAG"
	done
done
IFS="$OIFS"

