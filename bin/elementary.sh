#!/bin/bash

source bin/include.sh

BASE00="rgb(101,123,131)"
BASE01="rgb(88,110,117)"
BASE02="rgb(7,54,66)"
BASE03="rgb(0,43,54)"
BASE0="rgb(131,148,150)"
BASE1="rgb(147,161,161)"
BASE2="rgb(238,232,213)"
BASE3="rgb(253,246,227)"
BLUE="rgb(38,139,210)"
CYAN="rgb(42,161,152)"
GREEN="rgb(133,153,0)"
MAGENTA="rgb(211,54,130)"
ORANGE="rgb(203,75,22)"
RED="rgb(220,50,47)"
VIOLET="rgb(108,113,196)"
YELLOW="rgb(181,137,0)"

cmd "gsettings set io.elementary.terminal.settings background \"rgba(12,42,53,0.95)\""
cmd "gsettings set io.elementary.terminal.settings cursor-color \"${RED}\""
cmd "gsettings set io.elementary.terminal.settings font \"Roboto Mono 10\""
cmd "gsettings set io.elementary.terminal.settings foreground \"${BASE0}\""
cmd "gsettings set io.elementary.terminal.settings natural-copy-paste false"
cmd "gsettings set io.elementary.terminal.settings palette \"${BASE02}:${RED}:${GREEN}:${YELLOW}:${BLUE}:${MAGENTA}:${CYAN}:${BASE2}:${BASE03}:${ORANGE}:${BASE01}:${BASE00}:${BASE0}:${VIOLET}:${BASE1}:${BASE3}\""
cmd "gsettings set io.elementary.terminal.settings tab-bar-behavior \"'Hide When Single Tab'\""
cmd "gsettings set io.elementary.terminal.settings unsafe-paste-alert false"
cmd "gsettings set org.gnome.desktop.input-sources xkb-options \"['grp:alt_shift_toggle', 'ctrl:nocaps', 'compose:menu']\""
