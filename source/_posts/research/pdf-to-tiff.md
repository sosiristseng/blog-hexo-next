---
title: Convert PDF to TIFF images
comments: false
date: 2021-04-21 11:57:33
tags: [tiff, devops, research]
categories: Research
---

Using `ghostscript` and `imagemagick`.

<!-- more -->

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
