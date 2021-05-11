# Convert PDF to TIFF images


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

