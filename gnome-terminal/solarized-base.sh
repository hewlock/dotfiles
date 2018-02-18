#!/bin/bash

source gnome-terminal/include.sh

gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar "false"
gsettings set org.gnome.Terminal.Legacy.Settings theme-variant "system"

gsettings set "${SOLARIZED_SCHEMA}" bold-color-same-as-fg "true"
gsettings set "${SOLARIZED_SCHEMA}" cursor-colors-set "true"
gsettings set "${SOLARIZED_SCHEMA}" font "Roboto Mono for Powerline 12"
gsettings set "${SOLARIZED_SCHEMA}" highlight-colors-set "true"
gsettings set "${SOLARIZED_SCHEMA}" scrollbar-policy "never"
gsettings set "${SOLARIZED_SCHEMA}" use-theme-colors "false"

