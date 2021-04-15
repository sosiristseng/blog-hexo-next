---
title: "Install Fonts in Linux"
date: 2020-10-22T16:18:15+08:00
tags: ["fonts", "linux"]
categories: ["Linux"]
---

Install custom fonts and make the system sees it.

<!--more-->

## Per user

Copy the font files to  `~/.local/share/fonts/`. Then, run `fc-cache` to rebuild the font cache.

```bash
fc-cache -fv
```

## System-wide

Copy the font files to  `/usr/share/fonts/`. Then, run `fc-cache` to rebuild the font cache.

```bash
sudo fc-cache -fv /usr/share/fonts/
```

## Improve font rendering for Manjaro

[Manjaro wiki | Font rendering](https://wiki.manjaro.org/index.php/Improve_Font_Rendering)

`/etc/fonts/local.conf`

```xml
<match target="font">
  <edit name="autohint" mode="assign">
    <bool>true</bool>
  </edit>
  <edit name="hinting" mode="assign">
    <bool>true</bool>
  </edit>
  <edit mode="assign" name="hintstyle">
    <const>hintslight</const>
  </edit>
  <edit mode="assign" name="lcdfilter">
   <const>lcddefault</const>
 </edit>
</match>
```

'~/.Xresources'

```
Xft.dpi: 96
Xft.antialias: true
Xft.hinting: true
Xft.rgba: rgb
Xft.autohint: false
Xft.hintstyle: hintslight
Xft.lcdfilter: lcddefault
```

And finally run

```bash
xrdb -merge ~/.Xresources
```
