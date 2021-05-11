---
title: "Tilix shel emulator"
subtitle: ""
date: 2021-05-11T12:18:10+08:00
draft: false
author: ""
authorLink: ""
description: ""

tags: ["linux", "command line"]
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

[Tilix](https://gnunn1.github.io/tilix-web/) is an advanced GTK3 tiling terminal emulator.

<!--more-->

## Installation

The following script installs `tilix` and `python-nautilus` for `Open tilix here` context menu in the Nautilus file manager.

### Ubuntu (and derivatives)

```bash
sudo apt install tilix

[[ -x $(command -v nautilus) ]] && sudo apt install python-nautilus
```

### Arch (and derivatives)

```bash
sudo pacman -S tilix
[[ -x $(command -v nautilus) ]] && sudo pacman -S python-nautilus
```

## Set tilix as the default GUI terminal emulator

### Ubuntu (and derivatives)

```bash
sudo update-alternatives --config x-terminal-emulator
```

### Arch (and derivatives)

Select in `Prefered applications`.
