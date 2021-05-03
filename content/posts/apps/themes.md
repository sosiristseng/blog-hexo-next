---
title: "Themes"
subtitle: ""
date: 2021-05-03T16:24:37+08:00
draft: false
author: ""
authorLink: ""
description: ""

tags: ["linux"]
categories: ["Linux", "Applications"]

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

Theming in Linux.

<!--more-->

## Papirus icon theme and Kvantum SVG engine

Install via `apt`

```bash
sudo add-apt-repository -yu ppa:papirus/papirus           # Papirus icon theme
sudo apt install papirus-icon-theme qt5-style-kvantum qt5ct
```

Install via `pacman`

```bash
sudo pacman -S papirus-icon-theme kvantum-qt5
```

## Materia theme

Clean theme on both KDE and Gnome.

- [@Materia (KDE)](https://github.com/PapirusDevelopmentTeam/materia-kde)
- [Materia (GTK)](https://github.com/nana-4/materia-theme)

Install via `apt`

```bash
sudo add-apt-repository -yu ppa:papirus/papirus
sudo apt install materia-gtk-theme materia-kde
```

Install via `pacman`

```bash
sudo pacman -S materia-gtk-theme materia-kde kvantum-theme-materia
```

Setup fonts for materia theme:

- To properly display the theme, use a font family including Medium weight (e.g. `Roboto` or M+).
- Set the font size to 9.75 (= 13px at 96dpi) or 10.5 (= 14px at 96dpi).
