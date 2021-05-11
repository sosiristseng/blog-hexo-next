---
title: "Markdown editors"
subtitle: ""
date: 2021-05-03T16:15:27+08:00
draft: false
author: ""
authorLink: ""
description: ""

tags: ["linux", "windows", "markdown"]
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

The email-style writing for the web by John Gruber and Aaron Swartz. Also see [awesome Markdown](https://github.com/mundimark/awesome-markdown#markdown).

<!--more-->

{{< admonition type=tip title="For Ubuntu and derivatives" >}}
Install the needed tools to add deb repositories

```bash
sudo apt-get update && sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release
```
{{< /admonition >}}

## Marktext

Marktext[^1], a full-featured open-source what-you-see-is-what-you-get Markdown editor.

[^1]: https://marktext.app/

- Download and Install binary[^1]
- Via [AUR](https://aur.archlinux.org/packages/marktext-bin/)
  ```bash
  paru -S marktext-bin
  ```
- [choco](https://community.chocolatey.org/packages/marktext.install)
  ```bash
  choco install marktext.install
  ```


## Typora

[Typora](https://typora.io/) is a full-featured what-you-see-is-what-you-get Markdown editor.

- Add deb repository
  ```bash
  curl -fsSL https://typora.io/linux/public-key.asc | sudo gpg --dearmor -o /usr/share/keyrings/typora-keyring.gpg

  echo "deb [signed-by=/usr/share/keyrings/typora-keyring.gpg] https://typora.io/linux ./" | sudo tee /etc/apt/sources.list.d/typora.list > /dev/nul
  sudo apt update && sudo apt install typora
  ```
- Via [AUR](https://aur.archlinux.org/packages/typora/))
  ```bash
  paru -S typora
  ```
- [choco](https://community.chocolatey.org/packages/typora)
  ```bash
  choco install typora
  ```

You can [install pandoc](https://pandoc.org/installing.html) to export Markdown files to `docx` files.