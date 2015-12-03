#!/bin/bash
# DSInternals installer
# Last updated 12/03/2015

##### (Cosmetic) Colour output
RED="\033[01;31m"      # Issues/Errors
GREEN="\033[01;32m"    # Success
YELLOW="\033[01;33m"   # Warnings/Information
BLUE="\033[01;34m"     # Heading
BOLD="\033[01;01m"     # Highlight
RESET="\033[00m"       # Normal


#echo -e "\n ${BLUE}[*]${RESET} ${BOLD}Windows post-install script${RESET}\n"

#mkdir /opt/Windows/

##### Install DSInternals
echo -e "\n ${GREEN}[+]${RESET} Installing ${GREEN}DSInternals${RESET} ~ Post-ex powershell scripts"
mkdir -p /c/opt/DSInternals
pushd /c/opt/DSInternals/ >/dev/null
/c/opt/Git_WinPTTools/wget --no-check-certificate https://www.dsinternals.com/wp-content/uploads/DSInternals_v2.8.zip
/c/opt/Git_WinPTTools/7z e DSInternals_v2.8.zip
popd >/dev/null
