#!/bin/bash

source gnome-terminal/include.sh

gsettings set "${SOLARIZED_SCHEMA}" background-color "${BASE03}"
gsettings set "${SOLARIZED_SCHEMA}" cursor-background-color "${RED}"
gsettings set "${SOLARIZED_SCHEMA}" cursor-foreground-color "${BASE03}"
gsettings set "${SOLARIZED_SCHEMA}" foreground-color "${BASE0}"
gsettings set "${SOLARIZED_SCHEMA}" highlight-background-color "${MAGENTA}"
gsettings set "${SOLARIZED_SCHEMA}" highlight-foreground-color "${BASE03}"
gsettings set "${SOLARIZED_SCHEMA}" palette "['${BASE2}', '${RED}', '${GREEN}', '${YELLOW}', '${BLUE}', '${MAGENTA}', '${CYAN}', '${BASE02}', '${BASE3}', '${ORANGE}', '${BASE1}', '${BASE0}', '${BASE00}', '${VIOLET}', '${BASE01}', '${BASE03}']"
