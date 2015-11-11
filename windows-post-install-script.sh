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

##### Install DSInternals
#echo -e "\n ${GREEN}[+]${RESET} Installing ${GREEN}DSInternals${RESET} ~ Post-ex powershell scripts"
#mkdir -p /opt/DSInternals
#pushd /opt/DSInternals/ >/dev/null
#wget https://www.dsinternals.com/wp-content/uploads/DSInternals_v2.8.zip
#7z e DSInternals_v2.8.zip
#popd >/dev/null
##### Install Empire
#echo -e "\n ${GREEN}[+]${RESET} Installing ${GREEN}Empire${RESET} ~ post-exploitation framework"
#apt-get -y -qq install git || echo -e ' '${RED}'[!] Issue with apt-get'${RESET} 1>&2
#git clone -q https://github.com/powershellempire/empire/ /opt/Windows/empire-git/ || echo -e ' '${RED}'[!] Issue when git cloning'${RESET} 1>&2
#pushd /opt/Windows/empire-git/ >/dev/null
#git pull -q
#popd >/dev/null
##### Install Generate-Macro
echo -e "\n ${GREEN}[+]${RESET} Installing ${GREEN}Generate-Macro${RESET} ~ malicious macro generator"
git clone -q https://github.com/enigma0x3/Generate-Macro/ /opt/generate-macro-git/ || echo -e ' '${RED}'[!] Issue when git cloning'${RESET} 1>&2
pushd /opt/generate-macro-git/ >/dev/null
git pull -q
popd >/dev/null
##### Install Get-bADpasswords
echo -e "\n ${GREEN}[+]${RESET} Installing ${GREEN}Get-bADpasswords${RESET} ~ PS password hash extrator and analyzer"
git clone -q https://github.com/ZilentJack/Get-bADpasswords/ /opt/get-bADpasswords-git/ || echo -e ' '${RED}'[!] Issue when git cloning'${RESET} 1>&2
pushd /opt/get-bADpasswords-git/ >/dev/null
git pull -q
popd >/dev/null
##### Install Nishang
echo -e "\n ${GREEN}[+]${RESET} Installing ${GREEN}Nishang${RESET} ~ post-exploitation framework"
git clone -q https://github.com/samratashok/nishang/ /opt/nishang-git/ || echo -e ' '${RED}'[!] Issue when git cloning'${RESET} 1>&2
pushd /opt/nishang-git/ >/dev/null
git pull -q
popd >/dev/null
##### Install PoshSecMod
echo -e "\n ${GREEN}[+]${RESET} Installing ${GREEN}PoshSecMod${RESET} ~ powershell cmdlets"
git clone -q https://github.com/darkoperator/Posh-SecMod/ /opt/posh-secmod-git/ || echo -e ' '${RED}'[!] Issue when git cloning'${RESET} 1>&2
pushd /opt/posh-secmod-git/ >/dev/null
git pull -q
popd >/dev/null
##### Install Powercat
echo -e "\n ${GREEN}[+]${RESET} Installing ${GREEN}Powercat${RESET} ~ powershell netcat"
git clone -q https://github.com/besimorhino/powercat/ /opt/powercat-git/ || echo -e ' '${RED}'[!] Issue when git cloning'${RESET} 1>&2
pushd /opt/powercat-git/ >/dev/null
git pull -q
popd >/dev/null
##### Install PowerShell-Scripts
echo -e "\n ${GREEN}[+]${RESET} Installing ${GREEN}PowerShell-Scripts${RESET} ~ powershell attack scripts"
git clone -q https://github.com/roo7break/PowerShell-Scripts/ /opt/powershell-scripts-git/ || echo -e ' '${RED}'[!] Issue when git cloning'${RESET} 1>&2
pushd /opt/powershell-scripts-git/ >/dev/null
git pull -q
popd >/dev/null
##### Install PowerSploit
echo -e "\n ${GREEN}[+]${RESET} Installing ${GREEN}PowerSploit${RESET} ~ powershell attack framework"
git clone -q https://github.com/mattifestation/PowerSploit/ /opt/powersploit-git/ || echo -e ' '${RED}'[!] Issue when git cloning'${RESET} 1>&2
pushd /opt/powersploit-git/ >/dev/null
git pull -q
popd >/dev/null
##### Install PowerTools
echo -e "\n ${GREEN}[+]${RESET} Installing ${GREEN}PowerTools${RESET} ~ powershell post-exploitaion framework"
git clone -q https://github.com/PowerShellEmpire/PowerTools/ /opt/powertools-git/ || echo -e ' '${RED}'[!] Issue when git cloning'${RESET} 1>&2
pushd /opt/powertools-git/ >/dev/null
git pull -q
popd >/dev/null
##### Install SprayWMI
echo -e "\n ${GREEN}[+]${RESET} Installing ${GREEN}SprayWMI${RESET} ~ Windows WMI post-exploitation equivalent of PSEXEC"
git clone -q https://github.com/trustedsec/spraywmi/ /opt/spraywmi-git/ || echo -e ' '${RED}'[!] Issue when git cloning'${RESET} 1>&2
pushd /opt/spraywmi-git/ >/dev/null
git pull -q
popd >/dev/null
##### End of TSP adds
