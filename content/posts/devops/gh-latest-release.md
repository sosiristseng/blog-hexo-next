---
title: "Find and download the latest release version from GitHub"
subtitle: ""
date: 2021-04-02T17:16:26+08:00
author: ""
authorLink: ""
description: ""

tags: ["github", "pandoc", "devops"]
categories: ["DevOps"]

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

From this [gist](https://gist.github.com/steinwaywhw/a4cd19cda655b8249d908261a62687f8).

```bash
curl -s https://api.github.com/repos/jgm/pandoc/releases/latest \
| grep "browser_download_url.*deb" \
| cut -d '"' -f 4 \
| wget -qi -
```

to download the latest release version of [pandoc](https://github.com/jgm/pandoc), for instance.

<!--more-->

- `curl` to get the JSON response for the latest release
- `grep` to find the line containing file URL
- `cut`  to extract the URL
- `wget` to download it
