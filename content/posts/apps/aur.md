---
title: "AUR helpers"
subtitle: ""
date: 2021-05-03T15:10:08+08:00
draft: false
author: ""
authorLink: ""
description: ""

tags: ["linux"]
categories: ["Linux", "Applications"]

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

The [Arch User Repository (AUR)](https://aur.archlinux.org) hosts community-contributed `PKGBUILD`s, instructions to download and build a packages.

While you could clone the `PKGBUILD` files and run `makepkg -si ` manually, [AUR helpers](https://wiki.archlinux.org/index.php/AUR_helpers) automate these process, giving a similar experience for installing regular packages in `pacman`.

<!--more-->

## pikaur

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

## paru

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


## yay

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

## See also

- [Pacman tips]({{< ref "posts/linux/pacman.md" >}})
