---
title: "Development tools"
subtitle: ""
date: 2021-05-03T15:32:36+08:00
draft: false
author: ""
authorLink: ""
description: ""

tags: ["linux", "windows", "command line"]
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

> Compilers, Editors, IDEs, Runtimes, etc.

<!--more-->

{{< admonition type=tip title="For Ubuntu and derivatives" >}}
Install the needed tools to add deb repositories

```bash
sudo apt-get update && sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release
```
{{< /admonition >}}


## Basic compiler set

> `gcc` and friends.

- Ubuntu and derivatives
  ```bash
  sudo apt install build-essential
  ```
- Arch and derivatives
  ```bash
  sudo pacman -S base-devel
  ```
- Windows
  ```bash
  choco install mingw
  ```

## Docker with optional nvGPU support

- Ubuntu: Setup deb repository
  ```bash
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

  echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

  sudo apt-get update && sudo apt-get install docker-ce docker-ce-cli containerd.io

  # CUDA runtime support
  distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
  curl -fsSL https://nvidia.github.io/nvidia-docker/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-docker-keyring.gpg
  curl -fsSL https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list > /dev/null

  sudo apt update && sudo apt install nvidia-container-toolkit
  sudo systemctl restart docker
  ```
- `pacman`[^docker-aw]
  ```bash
  sudo pacman -S docker
  sudo systemctl enable --now docker.service

  # CUDA runtime support
  paru -S nvidia-container-toolkit
  sudo systemctl restart docker
  ```

Test your installation

```bash
sudo docker docker run hello-world

sudo docker run --gpus all nvidia/cuda:11.0-base nvidia-smi
```

[^docker-aw]: https://wiki.archlinux.org/title/Docker

## Gitkraken

Free Git GUI for Windows, Mac, Linux.[^1]

[^1]: https://www.gitkraken.com/

- Download and install offical binaries[^1]
- [snap](https://snapcraft.io/gitkraken)
  ```bash
  sudo snap install gitkraken --classic
  ```
- [AUR](https://aur.archlinux.org/packages/gitkraken/)
  ```bash
  paru -S gitkraken
  ```
- [choco](https://community.chocolatey.org/packages/gitkraken)
  ```bash
  choco install gitkraken
  ```

## NodeJS

[NodeJS](https://nodejs.org/) is a JavaScript runtime built on Chrome's V8 JavaScript engine.

- [Install via nvm]({{< ref "posts/webdev/npm.md" >}})
- [snap](https://snapcraft.io/node)
  ```bash
  sudo snap install node --classic
  ```
- [choco](https://community.chocolatey.org/packages/nodejs)
  ```bash
  choco install nodejs
  ```

## VS code

Visual Studio Code[^2] is a lightweight but powerful source code editor which runs on your desktop and is available for Linux, macOS and Windows.

[^2]: https://code.visualstudio.com

- Download and install offical binaries[^2]
- [snap](https://snapcraft.io/code)
  ```bash
  sudo snap install code --classic
  ```
- [choco](https://community.chocolatey.org/packages/vscode)
  ```bash
  sudo snap install code --classic
  ```
- Setup deb repository in Ubuntu
  ```bash
  curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /usr/share/keyrings/packages.microsoft.gpg

  echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null

  sudo apt update && sudo apt install code
  ```

{{< admonition type=info title="If deleting files in VS code is wacky" >}}

Set this parameter in `~/.profile`

```bash
export ELECTRON_TRASH=gio  # or kioclient5
```

{{< /admonition >}}
