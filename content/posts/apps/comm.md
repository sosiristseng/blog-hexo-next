---
title: "Communication apps"
subtitle: ""
date: 2021-05-03T15:18:33+08:00
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

> Email, instant messaging tools

<!--more-->

## Mailspring

The best (opensource) email app for people and teams at work. [^1]

[^1]: https://getmailspring.com

- Download and instal official binaries[^1]
- [snap](https://snapcraft.io/mailspring)
  ```bash
  sudo snap install mailspring
  ```

## Microsoft teams

Chat-centered workspace in Office 365.[^2]

[^2]: https://www.microsoft.com/en-US/microsoft-teams/group-chat-software

- Download and install offical binaries[^2]
- [snap](https://snapcraft.io/teams)
  ```bash
  sudo snap install teams
  ```
- [chocolatey](https://community.chocolatey.org/packages/microsoft-teams)
  ```bash
  choco install microsoft-teams
  ```

## Telegram

Official desktop client for the Telegram messenger. [^3]

[^3]: https://telegram.org

- Download and install official binaries[^3]
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
