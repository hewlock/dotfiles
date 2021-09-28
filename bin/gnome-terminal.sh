#!/bin/bash

info "Gnome Terminal settings and theme"

BASE03="rgb(0,43,54)"
BASE02="rgb(7,54,66)"
BASE01="rgb(88,110,117)"
BASE00="rgb(101,123,131)"
BASE0="rgb(131,148,150)"
BASE1="rgb(147,161,161)"
BASE2="rgb(238,232,213)"
BASE3="rgb(253,246,227)"
YELLOW="rgb(181,137,0)"
ORANGE="rgb(203,75,22)"
RED="rgb(220,50,47)"
MAGENTA="rgb(211,54,130)"
VIOLET="rgb(108,113,196)"
BLUE="rgb(38,139,210)"
CYAN="rgb(42,161,152)"
GREEN="rgb(133,153,0)"

SOLARIZED_PROFILE=$(gsettings get org.gnome.Terminal.ProfilesList default)
SOLARIZED_PROFILE=${SOLARIZED_PROFILE:1:-1}
SOLARIZED_SCHEMA=org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$SOLARIZED_PROFILE/

gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar "false"
gsettings set org.gnome.Terminal.Legacy.Settings theme-variant "system"

gsettings set "${SOLARIZED_SCHEMA}" background-color "${BASE03}"
gsettings set "${SOLARIZED_SCHEMA}" background-transparency-percent "5"
gsettings set "${SOLARIZED_SCHEMA}" bold-color-same-as-fg "true"
gsettings set "${SOLARIZED_SCHEMA}" cursor-background-color "${RED}"
gsettings set "${SOLARIZED_SCHEMA}" cursor-colors-set "true"
gsettings set "${SOLARIZED_SCHEMA}" cursor-foreground-color "${BASE03}"
gsettings set "${SOLARIZED_SCHEMA}" font "Roboto Mono 11"
gsettings set "${SOLARIZED_SCHEMA}" foreground-color "${BASE0}"
gsettings set "${SOLARIZED_SCHEMA}" highlight-background-color "${MAGENTA}"
gsettings set "${SOLARIZED_SCHEMA}" highlight-colors-set "true"
gsettings set "${SOLARIZED_SCHEMA}" highlight-foreground-color "${BASE03}"
gsettings set "${SOLARIZED_SCHEMA}" palette "['${BASE2}', '${RED}', '${GREEN}', '${YELLOW}', '${BLUE}', '${MAGENTA}', '${CYAN}', '${BASE02}', '${BASE3}', '${ORANGE}', '${BASE1}', '${BASE0}', '${BASE00}', '${VIOLET}', '${BASE01}', '${BASE03}']"
gsettings set "${SOLARIZED_SCHEMA}" scrollbar-policy "never"
gsettings set "${SOLARIZED_SCHEMA}" use-system-font "false"
gsettings set "${SOLARIZED_SCHEMA}" use-theme-colors "false"
