#!/bin/bash
# Discover installer
# Last updated 11/10/2015

##### (Cosmetic) Colour output
RED="\033[01;31m"      # Issues/Errors
GREEN="\033[01;32m"    # Success
YELLOW="\033[01;33m"   # Warnings/Information
BLUE="\033[01;34m"     # Heading
BOLD="\033[01;01m"     # Highlight
RESET="\033[00m"       # Normal


echo -e "\n ${BLUE}[*]${RESET} ${BOLD}Windows post-install script${RESET}\n"

#mkdir /opt/Windows/

##### Install Empire
echo -e "\n ${GREEN}[+]${RESET} Installing ${GREEN}Empire${RESET} ~ post-exploitation framework"
#apt-get -y -qq install git || echo -e ' '${RED}'[!] Issue with apt-get'${RESET} 1>&2
git clone -q https://github.com/powershellempire/empire/ /c/opt/empire-git/ || echo -e ' '${RED}'[!] Issue when git cloning'${RESET} 1>&2
pushd /c/opt/empire-git/ >/dev/null
git pull -q
popd >/dev/null
