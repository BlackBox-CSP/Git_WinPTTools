#!/bin/bash
# Git Updater
# Last updated 11/27/2015
# updated to reflect /c/opt/ install dirs for Git Bash

##### (Cosmetic) Colour output
RED="\033[01;31m"      # Issues/Errors
GREEN="\033[01;32m"    # Success
YELLOW="\033[01;33m"   # Warnings/Information
BLUE="\033[01;34m"     # Heading
BOLD="\033[01;01m"     # Highlight
RESET="\033[00m"       # Normal

##### Update Git repos 
##### only checks for one layer of recursion
cd /c/opt
for f in */
do
#echo "$f"
    if [ ! -d /c/opt/"$f"/.git ]; then
        cd /c/opt/"$f"
        for f2 in */
        do
            if [ -d /c/opt/"$f"/"$f2"/.git ]; then
                echo -e "\n ${GREEN}[+]${RESET} Updating ${GREEN}"$f2"${RESET} "
                pushd /c/opt/"$f"/"$f2" >/dev/null
                git pull
                popd >/dev/null
            fi
        done
        #echo -e "\n ${RED}No .git${RESET}"
    else
        #echo -e "\n ${GREEN}.git${RESET}"
        echo -e "\n ${GREEN}[+]${RESET} Updating ${GREEN}"$f"${RESET} "
        pushd /c/opt/"$f" >/dev/null
        git pull
        popd >/dev/null
    fi
done
