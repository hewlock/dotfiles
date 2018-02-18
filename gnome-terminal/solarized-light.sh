#!/bin/bash

source gnome-terminal/include.sh

gsettings set "${SOLARIZED_SCHEMA}" background-color "${BASE3}"
gsettings set "${SOLARIZED_SCHEMA}" cursor-background-color "${RED}"
gsettings set "${SOLARIZED_SCHEMA}" cursor-foreground-color "${BASE3}"
gsettings set "${SOLARIZED_SCHEMA}" foreground-color "${BASE00}"
gsettings set "${SOLARIZED_SCHEMA}" highlight-background-color "${MAGENTA}"
gsettings set "${SOLARIZED_SCHEMA}" highlight-foreground-color "${BASE3}"
gsettings set "${SOLARIZED_SCHEMA}" palette "['${BASE02}', '${RED}', '${GREEN}', '${YELLOW}', '${BLUE}', '${MAGENTA}', '${CYAN}', '${BASE2}', '${BASE03}', '${ORANGE}', '${BASE01}', '${BASE00}', '${BASE0}', '${VIOLET}', '${BASE1}', '${BASE3}']"
