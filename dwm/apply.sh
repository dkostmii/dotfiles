#!/bin/sh

# Reset
Color_Off="$(tput sgr0)"       # Text Reset

# Regular
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan="$(tput setaf 6)"         # Cyan
White='\033[0;37m'        # White

# Bright
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

dwm_repo_dir="$HOME/Repos/AUR/dwm"
dwm_version="6.4"

cp -f ./config.h "$dwm_repo_dir/config.h"
cp -f ./config.h "$dwm_repo_dir/src/config.h"
cp -f ./config.h "$dwm_repo_dir/src/dwm-$dwm_version/config.h"

printf 'Run \n\n%s%scd %s && makepkg -efi%s%s\n\nto build dwm.\n' $Cyan $(tput bold) $dwm_repo_dir $Color_Off
