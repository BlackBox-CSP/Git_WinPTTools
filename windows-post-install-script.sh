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

mkdir /opt/Windows/

##### Install DSInternals
echo -e "\n ${GREEN}[+]${RESET} Installing ${GREEN}DSInternals${RESET} ~ Post-ex powershell scripts"
mkdir -p /opt/Windows/DSInternals
pushd /opt/Windows/DSInternals/ >/dev/null
wget https://www.dsinternals.com/wp-content/uploads/DSInternals_v2.8.zip
unzip DSInternals_v2.8.zip
popd >/dev/null
##### Install Empire
echo -e "\n ${GREEN}[+]${RESET} Installing ${GREEN}Empire${RESET} ~ post-exploitation framework"
apt-get -y -qq install git || echo -e ' '${RED}'[!] Issue with apt-get'${RESET} 1>&2
git clone -q https://github.com/powershellempire/empire/ /opt/Windows/empire-git/ || echo -e ' '${RED}'[!] Issue when git cloning'${RESET} 1>&2
pushd /opt/Windows/empire-git/ >/dev/null
git pull -q
popd >/dev/null
##### Install Generate-Macro
echo -e "\n ${GREEN}[+]${RESET} Installing ${GREEN}Generate-Macro${RESET} ~ malicious macro generator"
apt-get -y -qq install git || echo -e ' '${RED}'[!] Issue with apt-get'${RESET} 1>&2
git clone -q https://github.com/enigma0x3/Generate-Macro/ /opt/Windows/generate-macro-git/ || echo -e ' '${RED}'[!] Issue when git cloning'${RESET} 1>&2
pushd /opt/Windows/generate-macro-git/ >/dev/null
git pull -q
popd >/dev/null
##### Install Get-bADpasswords
echo -e "\n ${GREEN}[+]${RESET} Installing ${GREEN}Get-bADpasswords${RESET} ~ PS password hash extrator and analyzer"
apt-get -y -qq install git || echo -e ' '${RED}'[!] Issue with apt-get'${RESET} 1>&2
git clone -q https://github.com/ZilentJack/Get-bADpasswords/ /opt/Windows/get-bADpasswords-git/ || echo -e ' '${RED}'[!] Issue when git cloning'${RESET} 1>&2
pushd /opt/Windows/get-bADpasswords-git/ >/dev/null
git pull -q
popd >/dev/null
##### Install Nishang
echo -e "\n ${GREEN}[+]${RESET} Installing ${GREEN}Nishang${RESET} ~ post-exploitation framework"
apt-get -y -qq install git || echo -e ' '${RED}'[!] Issue with apt-get'${RESET} 1>&2
git clone -q https://github.com/samratashok/nishang/ /opt/Windows/nishang-git/ || echo -e ' '${RED}'[!] Issue when git cloning'${RESET} 1>&2
pushd /opt/Windows/nishang-git/ >/dev/null
git pull -q
popd >/dev/null
##### Install PoshSecMod
echo -e "\n ${GREEN}[+]${RESET} Installing ${GREEN}PoshSecMod${RESET} ~ powershell cmdlets"
apt-get -y -qq install git || echo -e ' '${RED}'[!] Issue with apt-get'${RESET} 1>&2
git clone -q https://github.com/darkoperator/Posh-SecMod/ /opt/Windows/posh-secmod-git/ || echo -e ' '${RED}'[!] Issue when git cloning'${RESET} 1>&2
pushd /opt/Windows/posh-secmod-git/ >/dev/null
git pull -q
popd >/dev/null
##### Install Powercat
echo -e "\n ${GREEN}[+]${RESET} Installing ${GREEN}Powercat${RESET} ~ powershell netcat"
apt-get -y -qq install git || echo -e ' '${RED}'[!] Issue with apt-get'${RESET} 1>&2
git clone -q https://github.com/besimorhino/powercat/ /opt/Windows/powercat-git/ || echo -e ' '${RED}'[!] Issue when git cloning'${RESET} 1>&2
pushd /opt/Windows/powercat-git/ >/dev/null
git pull -q
popd >/dev/null
##### Install PowerShell-Scripts
echo -e "\n ${GREEN}[+]${RESET} Installing ${GREEN}PowerShell-Scripts${RESET} ~ powershell attack scripts"
apt-get -y -qq install git || echo -e ' '${RED}'[!] Issue with apt-get'${RESET} 1>&2
git clone -q https://github.com/roo7break/PowerShell-Scripts/ /opt/Windows/powershell-scripts-git/ || echo -e ' '${RED}'[!] Issue when git cloning'${RESET} 1>&2
pushd /opt/Windows/powershell-scripts-git/ >/dev/null
git pull -q
popd >/dev/null
##### Install PowerSploit
echo -e "\n ${GREEN}[+]${RESET} Installing ${GREEN}PowerSploit${RESET} ~ powershell attack framework"
apt-get -y -qq install git || echo -e ' '${RED}'[!] Issue with apt-get'${RESET} 1>&2
git clone -q https://github.com/mattifestation/PowerSploit/ /opt/Windows/powersploit-git/ || echo -e ' '${RED}'[!] Issue when git cloning'${RESET} 1>&2
pushd /opt/Windows/powersploit-git/ >/dev/null
git pull -q
popd >/dev/null
##### Install PowerTools
echo -e "\n ${GREEN}[+]${RESET} Installing ${GREEN}PowerTools${RESET} ~ powershell post-exploitaion framework"
apt-get -y -qq install git || echo -e ' '${RED}'[!] Issue with apt-get'${RESET} 1>&2
git clone -q https://github.com/Veil-Framework/PowerTools/ /opt/Windows/powertools-git/ || echo -e ' '${RED}'[!] Issue when git cloning'${RESET} 1>&2
pushd /opt/Windows/powertools-git/ >/dev/null
git pull -q
popd >/dev/null
##### Install SprayWMI
echo -e "\n ${GREEN}[+]${RESET} Installing ${GREEN}SprayWMI${RESET} ~ Windows WMI post-exploitation equivalent of PSEXEC"
apt-get -y -qq install git || echo -e ' '${RED}'[!] Issue with apt-get'${RESET} 1>&2
git clone -q https://github.com/trustedsec/spraywmi/ /opt/Windows/spraywmi-git/ || echo -e ' '${RED}'[!] Issue when git cloning'${RESET} 1>&2
pushd /opt/Windows/spraywmi-git/ >/dev/null
git pull -q
popd >/dev/null
##### End of TSP adds
