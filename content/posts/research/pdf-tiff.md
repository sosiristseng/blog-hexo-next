---
title: "Convert PDF to TIFF images"
subtitle: ""
date: 2021-04-23T17:53:25+08:00
author: ""
authorLink: ""
description: ""

tags: [tiff, devops]
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
comment: false
---

Using `ghostscript` and `imagemagick` to convert `pdf` files to `tiff` images.

<!--more-->

## Install GhostScript and ImageMagick

```bash Ubuntu
sudo apt install ghostscript imagemagick
```

## Enable pdf permission

PDF read / write are disable by default. Change the config file to enable it. [^1]

```xml /etc/ImageMagick-7/policy.xml
<policy domain="coder" rights="read | write" pattern="PDF" />
```

[^1]: https://stackoverflow.com/questions/52998331/imagemagick-security-policy-pdf-blocking-conversion

## Convert pdf to tiff

```bash
convert -density 300 \
        -compress lzw \
        -background white \
        -alpha remove \
        -trim \
        "image.pdf" "image_%d.tiff"
```
