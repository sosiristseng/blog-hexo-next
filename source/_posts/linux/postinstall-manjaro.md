---
title: "Manjaro postinstall"
date: 2021-03-15T11:12:51+08:00
tags: ["postinstall", "manjaro", "linux", "system", "package"]
categories: ["Linux"]
comments: true
---

Things to do after installing [Manjaro](https://manjaro.org/download/).

<!--more-->

Or you can try [the monthly release installation medium](https://github.com/manjaro/release-review).

## Find fastest repository server

Set mirror in `pamac` settings.

## Install pikaur

Using `pamac` if you enable AUR builds.

## Update kernel and / or drivers

Use manjaro settings.

## Install packages

Save the content below as `pkgs.txt`

{% include_code pkgs.txt manjaro-pkgs.txt %}

Paste the contents to `~/.xprofile`

{% include_code .xprofile lang:bash ibus-profile.sh %}

Paste the contents to `~/.profile`

{% include_code .profile lang:bash eos-profile.sh %}

Run the following script:

{% include_code postinstall.sh lang:bash manjaro-postinstall.sh %}

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
