---
title: "Kubuntu 21.04 Postinstall"
subtitle: ""
date: 2021-05-03T23:43:29+08:00
draft: false
author: ""
authorLink: ""
description: ""

tags: ["postinstall", "linux"]
categories: ["Linux"]

hiddenFromHomePage: false
hiddenFromSearch: false

featuredImage: ""
featuredImagePreview: ""

toc:
  enable: true
math:
  enable: false
lightgallery: false
---

Thing to do after installing Kubuntu 21.04.

<!--more-->

## Add 3rd party sources and fully upgrade

```bash
sudo apt install -y apt-transport-https ca-certificates curl git gnupg-agent software-properties-common python3-pip

# Run this line if you need Wine and games
# sudo dpkg --add-architecture i386

# Brave
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list > /dev/null

# Vivaldi
curl -fsSL https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo gpg --dearmor -o /usr/share/keyrings/vivaldi-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/vivaldi-keyring.gpg] https://repo.vivaldi.com/archive/deb/ stable main" | sudo tee /etc/apt/sources.list.d/vivaldi.list > /dev/null

# Anydesk
curl -fsSL https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo gpg --dearmor -o /usr/share/keyrings/anydesk-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/anydesk-keyring.gpg] http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list > /dev/null

# Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Zotero
curl -fsSL https://github.com/retorquere/zotero-deb/releases/download/apt-get/install.sh | sudo bash

# Typora
curl -fsSL https://typora.io/linux/public-key.asc | sudo gpg --dearmor -o /usr/share/keyrings/typora-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/typora-keyring.gpg] https://typora.io/linux ./" | sudo tee /etc/apt/sources.list.d/typora.list > /dev/null

# Xanmod linux kernel
curl -fsSL https://dl.xanmod.org/gpg.key | sudo gpg --dearmor -o /usr/share/keyrings/xanmod-keyring.gpg
echo 'deb [signed-by=/usr/share/keyrings/xanmod-keyring.gpg] http://deb.xanmod.org releases main' | sudo tee /etc/apt/sources.list.d/xanmod-kernel.list > /dev/null

# VS Code
curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /usr/share/keyrings/packages.microsoft.gpg

echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null

sudo add-apt-repository -y ppa:git-core/ppa # Latest Git (stable)
sudo add-apt-repository -y ppa:alessandro-strada/ppa # Google drive client
sudo add-apt-repository -y ppa:libreoffice/ppa # Latest Libreoffice
sudo add-apt-repository -y ppa:papirus/papirus # Papirus icon theme
sudo add-apt-repository -y ppa:qbittorrent-team/qbittorrent-stable # Qbittorrent
sudo add-apt-repository -y ppa:kubuntu-ppa/backports # Kubuntu backport

# apt-fast
sudo add-apt-repository -y ppa:apt-fast/stable
echo debconf apt-fast/maxdownloads string 8 | sudo debconf-set-selections
echo debconf apt-fast/dlflag boolean true | sudo debconf-set-selections
echo debconf apt-fast/aptmanager string apt | sudo debconf-set-selections

sudo apt update && sudo apt install apt-fast -y && sudo apt-fast full-upgrade -y
```

## Install packages

Review and save this list in `pkgs.txt`

```bash
# Developement
cmake
build-essential
git
git-lfs
python3-pip
docker-ce
docker-ce-cli
containerd.io
code

# Network
cifs-utils
vivaldi-stable
brave-browser
qbittorrent

# System
parallel
pv
zsh
progress
htop
neofetch
linux-xanmod
kio-extras
gnome-keyring
gvfs

# Locale
fcitx5
fcitx5-chewing

# Media
ffmpeg
smplayer

# Themes
papirus-icon-theme
qt5-style-kvantum-themes
qt5-style-kvantum

# Fonts
fonts-noto
fonts-open-sans

# Editors
typora
zotero
```

Then run

```bash
sed 's/#.*$//' pkgs.txt | xargs sudo apt-fast install -y
```

## Python packages

```bash
pip install -U --user glances bpytop jill youtube-dl
```

## System Settings

- You may want to disable the KDE `wallet` subsystem.
- Start with an empty session in `Desktop session`
- Reduce swap use:
  ```bash
  echo 'vm.swappiness=10' | sudo tee -a /etc/sysctl.conf
  ```

## Download and install binaries if needed

- [Telegram](https://telegram.org/)
- [MarkText](https://github.com/marktext/marktext)
- [FreeFileSync](https://freefilesync.org/)
- [Starship](https://starship.rs/)
- [Hugo](https://github.com/gohugoio/hugo/releases/)
- [Pandoc](https://github.com/jgm/pandoc/releases/)
- [Virtualbox](https://www.virtualbox.org/)
