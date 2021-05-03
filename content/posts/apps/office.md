---
title: "Office suite"
subtitle: ""
date: 2021-05-03T16:26:04+08:00
draft: false
author: ""
authorLink: ""
description: ""

tags: ["linux", "windows"]
categories: ["Linux", "Windows", "Applications"]

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

Alternatives to MS office.

<!--more-->

## Libreoffice

A powerful office suite including word processing and creation of spreadsheets, slideshows and database. [^1]

[^1]: https://www.libreoffice.org

- [snap](https://snapcraft.io/libreoffice)
  ```bash
  sudo snap install libreoffice
  ```
- [choco](https://community.chocolatey.org/packages/libreoffice-fresh)
  ```bash
  choco install libreoffice-fresh
  ```
- [Libreoffice ppa](https://launchpad.net/~libreoffice/+archive/ubuntu/ppa)
  ```bash
  sudo add-apt-repository ppa:libreoffice/ppa -y
  sudo apt-get update && sudo apt-get install libreoffice
  ```
- `pacman`
  ```bash
  sudo pacman -S libreoffice-fresh
  ```

## Onlyoffice

A comprehensive office suite for editing documents, spreadsheets and presentations.[^2]

[^2]: https://www.onlyoffice.com

- [snap](https://snapcraft.io/onlyoffice-desktopeditors)
  ```bash
  sudo snap install onlyoffice-desktopeditors
  ```
- [choco](https://community.chocolatey.org/packages/onlyoffice/)
  ```bash
  choco install onlyoffice
  ```
