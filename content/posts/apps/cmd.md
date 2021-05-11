---
title: "Command line tools"
subtitle: ""
date: 2021-05-03T15:12:26+08:00
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

Tools for your command lines prompts.

<!--more-->

## Bashit

[Bash-it][] is the community's collection of useful bash scripts, inspired by the [oh-my-zsh][] project.

There are autocompletion, themes, aliases, custom functions, etc for bash prompt.

```bash
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it

bash ~/.bash_it/install.sh
```

[Bash-it]: https://github.com/Bash-it/bash-it
[oh-my-zsh]: https://ohmyz.sh/

## zsh improved framework (zimfw)

[`zim`](https://github.com/zimfw/zimfw) is a blazing fast zsh plugin framework, about 30x faster loading speed than the most popular [oh-my-zsh][].

Install `zsh` first and run the script

```bash
wget -nv -O - https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
```

### Powerlevel10k prompt

1. In `~/.zimrc`, replace `zmodule asciiship` with [^p10kzim]

```bash
zmodule romkatv/powerlevel10k
```

[^p10kzim]: https://github.com/romkatv/powerlevel10k#zim

2. Run `zimfw install` in zsh.
3. Install [powerline fonts](https://github.com/romkatv/powerlevel10k#manual) for proper font rendering.
4. Restart zsh to go through Powerlevel10k's interactive setup.

### Node version manager (nvm)

Add this line in `~/.zimrc` [^zshnvm] and then run `zimfw install` in zsh.

```bash
zmodule lukechilds/zsh-nvm
```

[^zshnvm]: https://github.com/lukechilds/zsh-nvm

To save loading time of zsh (about 70x), you can enable lazy loading by adding the following line to `~/.zshrc`, before loading zmodules:

```bash
export NVM_LAZY_LOAD=true
```

## Starship

[🚀 Starship](https://starship.rs/) is an enhancement for command prompt in a multitude of shells, powered by Rust. Available for bash, zsh, fish, powershell, etc.

### Installation

You could install the standalone binary:

```bash
sudo -v && curl -fsSL https://starship.rs/install.sh | bash
```

Or via AUR.

```bash
paru -S starship-bin   # or just "starship" if you want to compile the Rust code
```

Install [nerd fonts](https://www.nerdfonts.com/font-downloads) as well to show special characters correctly.

### Usage

Append this line in your `*.rc` files of your shell and restart your shell to load starship.

Bash: `~/.bashrc`

```bash
eval "$(starship init bash)"
```

Zsh: `~/.zshrc`

```bash
eval "$(starship init zsh)"
```

Windows Powershell: `~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1`

```powershell
Invoke-Expression (&starship init powershell)
```

## progress: See the progress of ongoing commands

[`progress`](https://github.com/Xfennec/progress) measures the speed and progress of ongoing commands.

After installation, just [launch](https://github.com/Xfennec/progress#what-can-i-do-with-it) `progress` in the terminal.

## pv: See the progress of pipes

[`pv`](https://linux.die.net/man/1/pv) shows transfer speed and /or progress through a Unix pipe.

The usage of `pv` is similar to that of `cat`. For example,

```bash
cat file > other_file # no output with cat
pv file > other_file  # With progress
```

```bash
# Showing both compression progress and speed
pv file | gzip > file.gz

# Sandwich form, showing speed without progress
cat file | pv | gzip > file.gz
```
