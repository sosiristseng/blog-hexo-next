---
title: "Conert PDF files to TIFF image"
subtitle: ""
date: 2021-06-19T13:35:47+08:00
draft: false
author: ""
authorLink: ""
description: ""

tags: [research, pdf, tiff]
categories: [Research]

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

Using `ghostscript` and `imagemagick` to convert `pdf` files to `tiff` images.

<!--more-->

## Install GhostScript and ImageMagick

```bash Ubuntu
sudo apt install ghostscript imagemagick
```

## Enable pdf permission

PDF read / write are disable by default. Change the config file to enable it. (From this [SO thread](https://stackoverflow.com/questions/52998331/imagemagick-security-policy-pdf-blocking-conversion))

```xml /etc/ImageMagick-7/policy.xml
<policy domain="coder" rights="read | write" pattern="PDF" />
```

## Convert pdf to tiff

```bash
convert -density 300 \
        -compress lzw \
        -background white \
        -alpha remove \
        -trim \
        "image.pdf" "image_%d.tiff"
```
