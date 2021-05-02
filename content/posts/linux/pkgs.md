---
title: "🔖 Linux software"
subtitle: ""
date: 2021-05-01T16:39:47+08:00
draft: false
author: ""
authorLink: ""
description: ""

tags: ["linux", "bookmark"]
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

Linux software I use.

See also
- [awesome applications for Linux](https://github.com/luong-komorebi/Awesome-Linux-Software).
- [List of applications](https://wiki.archlinux.org/index.php/List_of_applications) in ArchWiki.

<!--more-->

## AUR helpers

{{< admonition tip "For Arch Linux and derivatives" >}}

The [Arch User Repository (AUR)](https://aur.archlinux.org) hosts community-contributed `PKGBUILD`s, instructions to download and build a packages.

While you could clone the `PKGBUILD` files and run `makepkg -si ` manually, [AUR helpers](https://wiki.archlinux.org/index.php/AUR_helpers) automate these process, giving a similar experience for installing regular packages in `pacman`.

{{< /admonition >}}

### pikaur

[`pikaur`](https://github.com/actionless/pikaur) reviews PKGBUILDs all in once and asks all questions before installing/building, using systemd dynamic users to spawn build processes.

You can install `pikaur` by another AUR helper, for example:

```bash
paru -S pikaur
```

or install `pikaur` manually,

```bash
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/pikaur.git
cd pikaur
makepkg -fsri
```

Afterwards, you can install AUR packages as if installing regular ones

```bash
sudo pikaur -S google-chrome
```

To update all packages

```bash
sudo pikaur -Syu
```

### paru

[`paru`](https://github.com/Morganamilo/paru) is an AUR helper written in Rust, based on [`yay`](https://github.com/Jguer/yay), an AUR helper written in Go.


```bash
yay -S paru-bin # If you don't want to compile the Rust code
# yay -S paru   # Compile paru from source
```

Or install `paru` manually,

```bash
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

Afterwards, you can install AUR packages as if installing regular ones

```bash
paru -S google-chrome
```

To update all packages

```bash
paru
```


### yay

The AUR helper[^yay] directly available in Manjaro / enOS.

[^yay]: https://github.com/Jguer/yay

```bash
sudo pacman -S yay
```

Afterwards, you can install AUR packages as if installing regular ones

```bash
yay -S google-chrome
```

To update all packages

```bash
yay
```

Default options for yay could be saved using `yay --save <options>`, for example:

```bash
yay --answerclean All --answerdiff None --answerupgrade None --cleanafter --batchinstall --combinedupgrade --sudoloop --save
```

- `--cleanafter`: clean untracked files after build.
- `--combinedupgrade`: resolve dependency and then install both the repo and the AUR packages in one go.
- `--sudoloop`: Loop sudo calls in the background to prevent sudo from timing out during long builds.
- `--batchinstall`: Build all AUR packages and install them at once.



## Command line tools

### Bashit

[Bash-it][] is the community's collection of useful bash scripts, inspired by the [oh-my-zsh][] project.

There are autocompletion, themes, aliases, custom functions, etc for bash prompt.

```bash
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it

bash ~/.bash_it/install.sh
```

[Bash-it]: https://github.com/Bash-it/bash-it
[oh-my-zsh]: https://ohmyz.sh/

### zsh improved framework (zimfw)

[`zim`](https://github.com/zimfw/zimfw) is a blazing fast zsh plugin framework, about 30x faster loading speed than the most popular [oh-my-zsh][].

Install `zsh` first and run the script

```bash
wget -nv -O - https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
```

#### Powerlevel10k prompt

From [powerlevel10k@GitHub](https://github.com/romkatv/powerlevel10k#zim), replace `zmodule steeef` with

```bash
zmodule romkatv/powerlevel10k
```

in `~/.zimrc` and then run `zimfw install` in zsh.

Restart zsh to go through Powerlevel10k's interactive setup.

Install [powerline fonts](https://github.com/romkatv/powerlevel10k#manual) for proper font rendering.

#### Node version manager (nvm)

Add this line in `~/.zimrc` for [zsh-nvm module](https://github.com/lukechilds/zsh-nvm) and then run `zimfw install` in zsh.

```bash
zmodule lukechilds/zsh-nvm
```

To save loading time of zsh (about 70x), you can enable lazy loading by adding the following line to `~/.zshrc`, before loading zmodules:

```bash
export NVM_LAZY_LOAD=true
```

### Starship

[🚀 Starship](https://starship.rs/) is an enhancement for command prompt in a multitude of shells, powered by Rust. Available for bash, zsh, fish, powershell, etc.

You could install the standalone binary:

```bash
sudo -v && curl -fsSL https://starship.rs/install.sh | bash
```

Or via AUR. For Arch and derivatives (enOS, Garuda, Manjaro):

```bash
paru -S starship-bin # or just "starship" if you don't mind compiling the Rust code
```

#### Usage

Append this line in your `*.rc` files of your shell and restart your shell to load starship.

Bash: `~/.bashrc`

```bash
eval "$(starship init bash)"
```

Zsh: `~/.zshrc`
```bash
eval "$(starship init zsh)"
```

Install [nerd fonts](https://www.nerdfonts.com/font-downloads) to show special characters correctly.

### Tilix

[Tilix](https://gnunn1.github.io/tilix-web/) is an advanced GTK3 tiling terminal emulator.

The following script installs `tilix` and `python-nautilus` for `Open tilix here` context menu in the Nautilus file manager.

For Ubuntu:

```bash
sudo apt install tilix && [[ -x $(command -v nautilus) ]] && sudo apt install python-nautilus
```

For Arch and derivatives

```bash
# For Arch and derivatives
sudo pacman -S tilix && [[ -x $(command -v nautilus) ]] && sudo pacman -S python-nautilus
```

#### Set tilix as the default GUI terminal emulator

For Ubuntu or PopOS:

```bash
sudo update-alternatives --config x-terminal-emulator
```

For Arch and derivatives (enOS, Garuda, Manjaro).

Select in `Prefered applications`.

## Communication

### Mailspring

The best (opensource) email app for people and teams at work.

```bash
sudo snap install mailspring
```

### Microsoft teams

Chat-centered workspace in Office 365.

```bash
sudo snap install teams
```

### Telegram

Official desktop client for the Telegram messenger.

```bash
sudo snap install telegram-desktop
```


## Development tools

### Basic compiler set

> `make`, `patch`, `diff`, `gcc`, etc.

Ubuntu and derivatives

```bash
sudo apt install build-essential
```

Arch and derivatives

```bash
sudo pacman -S base-devel
```

### Gitkraken


### Node JS

[NodeJS](https://nodejs.org/) is a JavaScript runtime built on Chrome's V8 JavaScript engine.

- [Install Node JS via nvm]({{< ref "posts/webdev/npm.md" >}})
- Install via snap
  ```bash
  sudo snap install node --classic
  ```

### VS code

Visual Studio Code is a lightweight but powerful source code editor which runs on your desktop and is available for Linux, macOS and Windows.

```bash
sudo snap install code --classic
```

## Docker

### Install docker on Ubuntu[^ubuntu-docker]

[^ubuntu-docker]: https://docs.docker.com/engine/install/ubuntu/

```bash
sudo apt-get update && sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Set up docker repository
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install docker
sudo apt-get update && sudo apt-get install docker-ce docker-ce-cli containerd.io
```

Optionally with CUDA runtime support for utilizing nvidia GPUs in docker containers[^Grady]

[^Grady]: https://medium.com/@grady1006/ubuntu18-04%E5%AE%89%E8%A3%9Ddocker%E5%92%8Cnvidia-docker-%E4%BD%BF%E7%94%A8%E5%A4%96%E6%8E%A5%E9%A1%AF%E5%8D%A1-1e3c404c517d

```bash
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
wget -qO- https://nvidia.github.io/nvidia-docker/gpgkey | sudo tee /etc/apt/trusted.gpg.d/nvidia-docker.asc > /dev/null
wget -qO- https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list > /dev/null

sudo apt update && sudo apt install nvidia-container-toolkit
sudo systemctl restart docker
```

Test your installation

```bash
sudo docker run --gpus all nvidia/cuda:11.0-base nvidia-smi
```

### PopOS

[`tensorman`](https://github.com/pop-os/tensorman) as well as the nvidia container package are available in PopOS repository.

```bash
sudo apt install nvidia-container-runtime tensorman
```

### Arch and derivatives

Install `docker`

```bash
sudo pacman -S docker
sudo systemctl enable --now docker.service
```

Install [`nvidia-container-toolkit` @ AUR](https://aur.archlinux.org/packages/nvidia-container-toolkit/)

```bash
paru -S nvidia-container-toolkit
sudo systemctl restart docker
```

Test your installation

```bash
sudo docker run --gpus all nvidia/cuda:10.0-base nvidia-smi
```

## Input methods

### Fcitx

[Fcitx](https://wiki.archlinux.org/index.php/Fcitx) is a lightweight input method framework aimed at providing environment independent language support for Linux. The development effort is mainly on the new [version 5](https://wiki.archlinux.org/index.php/Fcitx5). `fctix` integraates better with KDE.

The new version 5 is released.

Install `fcitx5` on Arch and derivatives

```bash
sudo pacman -S fcitx5-im fcitx5-chewing fcitx5-material-color
```

Install `fcitx5` on Ubuntu 21.04+

```bash
sudo apt install fcitx5 fcitx5-chewing
```

If fcitx5 does not load at boot, attach the following lines to `~/.xprofile` or `~/.profile`.

```bash
export INPUT_METHOD=fcitx5
export GTK_IM_MODULE=fcitx5
export QT_IM_MODULE=fcitx5
export XMODIFIERS=\@im=fcitx5
```

### ibus

[ibus](https://github.com/ibus/ibus) is an input method framework using DBUS. `ibus` integrates better with gnome.


Install `ibus` on Ubuntu and derivatives

```bash
sudo apt install ibus ibus-chewing
```

Install `ibus` on Arch and derivatives

```bash
sudo pacman -S ibus ibus-chewing
```

If `ibus` does not load at boot, attach the following lines to `~/.xprofile` or `~/.profile`.

```bash
# ~/.xprofile
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
ibus-daemon -drx
```

And you can change icon color in the system tray using [`dconf`](https://wiki.archlinux.org/index.php/IBus#Systray_language_icon_color).

```bash
gsettings set org.freedesktop.ibus.panel xkb-icon-rgba ${COLOR}
```

## Markdown editors

### Marktext

[Marktext](https://marktext.app/), a full-featured open-source what-you-see-is-what-you-get Markdown editor.

- Download and Install [AppImage](https://marktext.app/)
- Install via AUR[^marktext-bin@AUR] for Arch and derivatives
  ```bash
  paru -S marktext-bin
  ```

[^marktext-bin@AUR]: https://aur.archlinux.org/packages/marktext-bin/

### Typora

[Typora](https://typora.io/) is a full-featured what-you-see-is-what-you-get Markdown editor.

For Ubuntu and Pop OS.

```bash
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
echo 'deb https://typora.io/linux ./' | sudo tee /etc/apt/sources.list.d/typora.list
sudo apt update && sudo apt install typora
```

For Arch-based systems, install [typora](https://aur.archlinux.org/packages/typora/) via AUR:

```bash
paru -S typora
```

You can [install pandoc](https://pandoc.org/installing.html) to export Markdown files to `docx` files.

## Office suite


### Libreoffice

A powerful office suite including word processing and creation of spreadsheets, slideshows and database.

```bash
sudo snap install libreoffice
```

### Onlyoffice

A comprehensive office suite for editing documents, spreadsheets and presentations.

```bash
sudo snap install onlyoffice-desktopeditors
```

## Themes

Setup materia theme in Linux.

### Papirus icon theme

Along with Kvantum SVG engine for QT apps.

Install via `apt`

```bash
sudo add-apt-repository -yu ppa:papirus/papirus           # Papirus icon theme
sudo apt install papirus-icon-theme qt5-style-kvantum qt5ct
```

Install via `pacman`

```bash
sudo pacman -S papirus-icon-theme kvantum-qt5
```

### Materia theme

Clean theme on both KDE and Gnome.

- [@Materia (KDE)](https://github.com/PapirusDevelopmentTeam/materia-kde)
- [Materia (GTK)](https://github.com/nana-4/materia-theme)

Install via `apt`

```bash
sudo add-apt-repository -yu ppa:papirus/papirus
sudo apt install materia-gtk-theme materia-kde
```

Install via `pacman`

```bash
sudo pacman -S materia-gtk-theme materia-kde kvantum-theme-materia
```

Setup fonts for materia theme:

- To properly display the theme, use a font family including Medium weight (e.g. `Roboto` or M+).
- Set the font size to 9.75 (= 13px at 96dpi) or 10.5 (= 14px at 96dpi).


## Reference
