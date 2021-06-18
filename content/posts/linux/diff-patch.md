---
title: "Diff and patch"
subtitle: ""
date: 2021-06-19T00:12:02+08:00
draft: false
author: ""
authorLink: ""
description: ""

tags: [linux]
categories: [Linux]

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

Record (`diff`) and apply (`patch`) changes to the source code.

<!--more-->

## Find the difference of two files

For example, I want to apply some changes to the default [`MAKEPKG`](https://wiki.archlinux.org/index.php/Makepkg) in `/etc/makepkg.conf` for my AUR builds in my future machines.

I copied `/etc/makepkg.conf` (the system) over to `~/.makepkg.conf` (the local version) and made some modification.

The the difference of these two files was made into a patch file.

```bash
diff -Nur /etc/makepkg.conf ~/.makepkg.conf > makepkg.patch
```

## Apply the patch file

On the new machine, copy `/etc/makepkg.conf` (the system) over to `~/.makepkg.conf` and apply the patch.

```bash
patch -u ~/.makepkg.conf -i makepkg.patch
```

## Comparing files in two directories

```bash
diff -Nur working/ modified/ > mod.patch
```

## Apply the change to other's working code

```bash
patch -ruN -d working < mod.patch
```

You could use `--dry-run` option first to see if it works.

## Sources

- [diff&patch@HowToGeek](https://www.howtogeek.com/415442/how-to-apply-a-patch-to-a-file-and-create-patches-in-linux/)
- [diff&patch@Tsung's Blog](https://blog.longwin.com.tw/2013/08/linux-diff-patch-learn-note-2013/) in traditional Chinese.
