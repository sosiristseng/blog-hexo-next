#!/usr/bin/env bash

# Setup NCHC mirror
sudo -v
sudo sed -i 's/us.archive.ubuntu.com/free.nchc.org.tw/g' /etc/apt/sources.list
sudo sed -i 's/archive.ubuntu.com/free.nchc.org.tw/g' /etc/apt/sources.list
sudo sed -i 's/security.ubuntu.com/free.nchc.org.tw/g' /etc/apt/sources.list
sudo apt update && sudo apt install -y apt-transport-https ca-certificates curl git gnupg-agent software-properties-common python3-pip

# Run this line if you need Wine and games
# sudo dpkg --add-architecture i386

# Vivaldi
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo tee /etc/apt/trusted.gpg.d/vivaldi.asc > /dev/null
echo "deb https://repo.vivaldi.com/archive/deb/ stable main" | sudo tee /etc/apt/sources.list.d/vivaldi.list

# Brave
wget -qO- https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo tee /etc/apt/trusted.gpg.d/brave-browser-release.asc > /dev/null
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

# Anydesk
wget -qO- https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo tee /etc/apt/trusted.gpg.d/anydesk.asc > /dev/null
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list

# docker (Only supports LTS version)
wget -qO- https://download.docker.com/linux/ubuntu/gpg | sudo tee /etc/apt/trusted.gpg.d/docker.asc > /dev/null
echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list

# Zotero
wget -qO- https://github.com/retorquere/zotero-deb/releases/download/apt-get/install.sh | sudo bash

# Typora
wget -qO- https://typora.io/linux/public-key.asc | sudo tee /etc/apt/trusted.gpg.d/typora.asc > /dev/null
echo 'deb https://typora.io/linux ./' | sudo tee /etc/apt/sources.list.d/typora.list

# Xanmod linux kernel
wget -qO- https://dl.xanmod.org/gpg.key | sudo tee /etc/apt/trusted.gpg.d/xanmod.asc > /dev/null
echo 'deb http://deb.xanmod.org releases main' | sudo tee /etc/apt/sources.list.d/xanmod-kernel.list

# VS code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo tee /etc/apt/trusted.gpg.d/microsoft.asc
echo 'deb [arch=amd64] https://packages.microsoft.com/repos/code stable main' | sudo tee /etc/apt/sources.list.d/vscode.list

sudo add-apt-repository -y ppa:appimagelauncher-team/stable  # AppImageLauncher
sudo add-apt-repository -y ppa:git-core/ppa                  # Git stable releases
sudo add-apt-repository -y ppa:alessandro-strada/ppa         # Google drive client
sudo add-apt-repository -y ppa:papirus/papirus               # Papirus icon theme
sudo add-apt-repository -y ppa:yann1ck/onedrive              # OneDrive client
sudo add-apt-repository -y ppa:kisak/kisak-mesa              # Mesa driver
sudo add-apt-repository -y ppa:libreoffice/ppa               # Libreoffice
sudo add-apt-repository -y ppa:qbittorrent-team/qbittorrent-stable # Qbittorrent

sudo apt update && sudo apt full-upgrade -y && sed 's/#.*$//' pkgs.txt | xargs sudo apt install -y

[[ -x "$(command -v pip3)" ]] && pip3 install -U --user glances bpytop jill youtube-dl
