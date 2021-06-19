---
title: "Zotero reference manager"
subtitle: ""
date: 2021-06-19T13:34:04+08:00
draft: false
author: ""
authorLink: ""
description: ""

tags: [research, zotero]
categories: [Research]

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

[Zotero](https://www.zotero.org/download/) is an open source reference manager.

<!--more-->


## Installation

### Ubuntu / PoPOS

For Ubuntu / PopOS users, zotero can be installed in [zotero-deb](https://github.com/retorquere/zotero-deb)

```bash
wget -qO- https://github.com/retorquere/zotero-deb/releases/download/apt-get/install.sh | sudo bash
sudo apt update
sudo apt install zotero
```

### Manjaro / endeavour OS

Zotero can be installed in [AUR](https://aur.archlinux.org/packages/zotero/)

```bash
paru -S zotero
```

### Windows

Either [download](https://www.zotero.org/download/) and run the installer, or use chocolatey package manager

```powershell
choco install zotero
```

## ZotFile for more Storage space

[Storage space is limited](https://www.zotero.org/storage) (300MB) for the free plan.

If you want to attach more pdf files or dataset you could set up a synced folder in the cloud storage.[^1] The steps are listed below.

[ZotFile](http://zotfile.com/) is an attachment manager for Zotero.

- Download the `.xpi` file for ZotFile and install it via the Zotero interface. Restart Zotero.
- In the ZotFile settings, set Location of Files to “Custom Location” and point it to the folder you created in your cloud syncing
- Disable syncing attachment files the library in Zotero preference -> Sync -> Settings -> File Syncing

[^1]: <https://www.nrel.colostate.edu/set-up-best-reference-manager>


## Other plugins

See [Plugins for Zotero](https://www.zotero.org/support/plugins) page for details.
