---
title: "KDE Neon Postinstall"
date: 2021-03-13T20:52:06+08:00
tags: ["kde neon", "postinstall", "linux", "system", "package"]
categories: ["Linux"]
comments: true
---

Things to do after installing KDE neon 20.04.

<!--more-->

## Post install script

Save this list in `pkgs.txt`

{% include_code pkgs.txt neon-pkgs.txt %}

Paste the contents to `~/.profile`

{% include_code .profile lang:bash ibus-profile.sh %}

{% include_code .profile lang:bash eos-profile.sh %}

Run the postinstall script

{% include_code postinstall.sh lang:bash neon-postinstall.sh %}

## Nvidia GPU

Nvidia CUDA 11 runtime and compatible GPU driver[^cuda]

{% include_code cuda.sh lang:bash ubuntu-cuda.sh %}

[^cuda]: [CUDA Toolkit 11.1 Update 1 Downloads](https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&target_distro=Ubuntu&target_version=2004&target_type=debnetwork)

## System Settings

- Double click instead of single `Workspace behavior` -> `General behavior` -> `click behavior`
- You may disable the KDE `wallet` subsystem.
- Start with an empty session in `Desktop session`
- Disable also index file content in `File search`
- Reduce swap use:
  ```bash
  echo 'vm.swappiness=10' | sudo tee -a /etc/sysctl.conf
  ```
- Input method: autostart `ibus-daemon -drx`

## Download binaries if needed

- [Telegram](https://telegram.org/)
- [MarkText (AppImage)](https://github.com/marktext/marktext)
- [FreeFileSync](https://freefilesync.org/)
- [Starship](https://starship.rs/)
- [Hugo](https://github.com/gohugoio/hugo/releases/)
- [Pandoc](https://github.com/jgm/pandoc/releases/)
- [Virtualbox](https://www.virtualbox.org/)
