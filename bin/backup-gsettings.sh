#!/bin/bash

mkdir -p ~/.gsettings.backup
gsettings list-recursively | sort > ~/.gsettings.backup/$(date --iso-8601=ns).txt
