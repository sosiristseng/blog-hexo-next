---
title: "Communication Apps"
subtitle: ""
date: 2021-06-18T23:47:21+08:00
draft: false
author: ""
authorLink: ""
description: ""

tags: ["linux", "apps"]
categories: [Linux, Applications]

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

> Email, instant messaging

<!--more-->

### Mailspring

[Mailspring](https://getmailspring.com), the best (opensource) email app for people and teams at work.

To install:
- [official binaries](https://getmailspring.com)
- [snap](https://snapcraft.io/mailspring)
  ```bash
  sudo snap install mailspring
  ```

### Microsoft teams

Chat-centered workspace in Office 365.

To install:
- [offical binaries](https://www.microsoft.com/en-US/microsoft-teams/group-chat-software)
- [snap](https://snapcraft.io/teams)
  ```bash
  sudo snap install teams
  ```
- [chocolatey](https://community.chocolatey.org/packages/microsoft-teams)
  ```bash
  choco install microsoft-teams
  ```

### Telegram

Official desktop client for the [Telegram messenger](https://telegram.org).

To install:
- [official binaries](https://telegram.org)
- [snap](https://snapcraft.io/telegram-desktop)
  ```bash
  sudo snap install telegram-desktop
  ```
- [chocolatey](https://community.chocolatey.org/packages/telegram)
  ```bash
  choco install telegram
  ```
- [PPA for Ubuntu](https://launchpad.net/~atareao/+archive/ubuntu/telegram)
  ```bash
  sudo add-apt-repository -y ppa:atareao/telegram
  sudo apt update && sudo apt install telegram
  ```
- `pacman`
  ```bash
  sudo pacman -S telegram-desktop
  ```
