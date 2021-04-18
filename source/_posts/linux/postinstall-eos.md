---
title: "Endeavour OS postinstall"
date: 2020-10-23T15:25:08+08:00
tags: ["postinstall", "endeavour os", "linux", "system", "package"]
categories: ["Linux"]
---

Things to do after installing [Endeavour OS](https://endeavouros.com/latest-release/).

<!--more-->

## Find fastest repository server

Click `select mirror` in the welcome APP and save the mirror list.

## Update kernel

Install `akm` kernel manager

```bash
sudo pacman -S akm
```

## Install pikaur

Instatuctions from [its Github repo](https://github.com/actionless/pikaur).

```bash
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/pikaur.git
cd pikaur
makepkg -fsri
```

## Postinstall script

Save the content below as `pkgs.txt`

{% include_code pkgs.txt eos-pkgs.txt %}

Paste the contents to `~/.xprofile`

{% include_code .xprofile lang:bash ibus-profile.sh %}

Paste the contents to `~/.profile`

{% include_code .profile lang:bash eos-profile.sh %}

Run this script:

{% include_code postinstall.sh lang:bash eos-postinstall.sh %}

## If using NVIDIA GPU

Install Nvidia DKMS driver for all kernels and CUDA runtime:

```bash
sudo pacman -S nvidia-dkms cuda cudnn
```

## Theme settings

### KDE

- Kvantum theme: Qogir Dark
- Global theme: Qogir Dark
- Plasma style: Qogir Dark
- Application style: kvantum
- GTK style: Qogir Dark
- Window decorations: Qogir Dark
- Colors: Qogir Dark
- Fonts
  - General: Roboto medium 10.5pts
  - Monospace: Hack Nerd Font 10.5pt
- Icons: Qogir Dark
- Cursors: Qogir Dark

## Additional packages

Use `pikaur -S <pkgname>`

- [PyCharm](https://www.jetbrains.com/pycharm/): `pycharm-community-jre`
- [Anydesk](https://anydesk.com/en/downloads/linux): `anydesk-bin`
- Java runtime: `jre-openjdk`
- Flatpak: `flatpak`
- Snap: `snapd`
- Google drive client: `google-drive-ocamlfuse-opam`
- Onedrive client: `onedrive-abraunegg`
- FreeFileSync: `freefilesync-bin`
- Bottom: `bottom-bin`

### VirtualBox

Install the packages and add your username to the `vbox` group.

```bash
sudo pikaur -S virtualbox virtualbox-guest-iso net-tools virtualbox-ext-oracle

sudo gpasswd -a username vboxusers
```
