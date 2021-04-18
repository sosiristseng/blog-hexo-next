---
title: "Ubuntu Postinstall"
date: 2020-10-21T17:26:59+08:00
tags: ["ubuntu", "postinstall", "linux", "system", "package"]
categories: ["Linux"]
comments: true
---

Things to do after installing Ubuntu 20.04.

<!--more-->

## Install traditional Chinese in language support

Default locale in Ubuntu for traditional Chinese (Taiwan) is `lzh_TW` rather than `zh_TW`.

Install the Traditional Chinese locale in `Language Support` and then set locale to `Taiwan` to solve this problem.

## Post install script

Save this list in `pkgs.txt`

{% include_code pkgs.txt ubuntu-pkgs.txt %}

Run the postinstall script

Paste the contents to `~/.profile`

{% include_code .profile lang:bash eos-profile.sh %}

Run the postinstall script

{% include_code postinstall.sh lang:bash neon-postinstall.sh %}

## Nvidia GPU

Nvidia CUDA 11 runtime and compatible GPU driver[^cuda]

{% include_code cuda.sh lang:bash ubuntu-cuda.sh %}

[^cuda]: [CUDA Toolkit 11.1 Update 1 Downloads](https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&target_distro=Ubuntu&target_version=2004&target_type=debnetwork)

## Extensions for gnome shell

From the [gnome shell website](https://extensions.gnome.org/) + browser addon

- [User themes](https://extensions.gnome.org/extension/19/user-themes/)
- [Sound Input & Output Device Chooser](https://extensions.gnome.org/extension/906/sound-output-device-chooser/)
- [Screenshot Tool](https://extensions.gnome.org/extension/1112/screenshot-tool/)
- [Dash to panel](https://extensions.gnome.org/extension/1160/dash-to-panel/) for a Win-8sque experience
- [Material shell](https://extensions.gnome.org/extension/3357/material-shell/) for tiling windows experience

## Download binaries if needed

- [Telegram](https://telegram.org/)
- [MarkText (AppImage)](https://github.com/marktext/marktext)
- [FreeFileSync](https://freefilesync.org/)
- [Starship](https://starship.rs/)
- [Hugo](https://github.com/gohugoio/hugo/releases/)
- [Pandoc](https://github.com/jgm/pandoc/releases/)
- [Virtualbox](https://www.virtualbox.org/)
