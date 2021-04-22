---
title: "NodeJS setup"
date: 2020-10-21T17:21:16+08:00
tags: ["nodejs", "linux", "windows", "webdev"]
categories: ["WebDev"]
---

Node.js is an open-source, cross-platform, JavaScript runtime for writing servers and command-line tools. Also see [awesome NodeJS](https://github.com/sindresorhus/awesome-nodejs) for curated packages and resources.



{% tabs os %}
<!-- tab Windows -->

Download and install [NodeJS](https://nodejs.org/zh-tw/download/) directly or through [Chocolatey package manager](https://nodejs.org/en/download/package-manager/).

```powershell
choco install nodejs
```

<!-- endtab -->

<!-- tab Linux or MacOS -->

Using [Node Version manager (NVM)](https://github.com/nvm-sh/nvm) to install `npm` is recommended to avoid conflits with system-wide `npm` and [avoid using](https://medium.com/@ExplosionPills/dont-use-sudo-with-npm-still-66e609f5f92) `sudo npm install -g pkg`. ✒️ For zsh users, you could install the [zsh-nvm module](https://github.com/lukechilds/zsh-nvm).

```bash Install NVM
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | bash

nvm install nodejs
```

<!-- endtab -->
{% endtabs %}

<!--more-->
