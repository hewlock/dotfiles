#!/bin/bash

function header {
	echo -e "\n\033[1;4m$1\033[0m\n"
}

function color {
	echo -e "$1 $2 \033[$1m$2\033[0m"
}

clear

header Modifiers

color 1 Bold
color 2 Dim
color 3 Emphasis
color 4 Underline
color 5 Blink
color 6 Unknown
color 7 Inverted
color 8 Hidden

header Foreground

color 30 "Black (Base02)"
color 31 "Red"
color 32 "Green"
color 33 "Yellow"
color 34 "Blue"
color 35 "Magenta"
color 36 "Cyan"
color 37 "White (Base2)"
color 90 "Bright Black (Base03)"
color 91 "Bright Red (Orange)"
color 92 "Bright Green (Base01)"
color 93 "Bright Yellow (Base00)"
color 94 "Bright Blue (Base0)"
color 95 "Bright Magenta (Violet)"
color 96 "Bright Cyan (Base1)"
color 97 "Bright White (Base3)"

header Background

color 40 "Black (Base02)"
color 41 "Red"
color 42 "Green"
color 43 "Yellow"
color 44 "Blue"
color 45 "Magenta"
color 46 "Cyan"
color 47 "White (Base2)"
color 100 "Bright Black (Base03)"
color 101 "Bright Red (Orange)"
color 102 "Bright Green (Base01)"
color 103 "Bright Yellow (Base00)"
color 104 "Bright Blue (Base0)"
color 105 "Bright Magenta (Violet)"
color 106 "Bright Cyan (Base1)"
color 107 "Bright White (Base3)"
