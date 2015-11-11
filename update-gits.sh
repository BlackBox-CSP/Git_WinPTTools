#!/bin/bash
# Git Updater
# Last updated 09/29/2015

##### (Cosmetic) Colour output
RED="\033[01;31m"      # Issues/Errors
GREEN="\033[01;32m"    # Success
YELLOW="\033[01;33m"   # Warnings/Information
BLUE="\033[01;34m"     # Heading
BOLD="\033[01;01m"     # Highlight
RESET="\033[00m"       # Normal

##### Update Git repos 
##### only checks for one layer of recursion
cd /opt
for f in */
do
#echo "$f"
    if [ ! -d /opt/"$f"/.git ]; then
        cd /opt/"$f"
        for f2 in */
        do
            if [ -d /opt/"$f"/"$f2"/.git ]; then
                echo -e "\n ${GREEN}[+]${RESET} Updating ${GREEN}"$f2"${RESET} "
                pushd /opt/"$f"/"$f2" >/dev/null
                git pull
                popd >/dev/null
            fi
        done
        #echo -e "\n ${RED}No .git${RESET}"
    else
        #echo -e "\n ${GREEN}.git${RESET}"
        echo -e "\n ${GREEN}[+]${RESET} Updating ${GREEN}"$f"${RESET} "
        pushd /opt/"$f" >/dev/null
        git pull
        popd >/dev/null
    fi
done
