---
title: "Find and download the latest release version from GitHub"
date: 2021-04-02T17:16:26+08:00
tags: ["github", "pandoc", "devops"]
categories: ["DevOps"]
comment: true
---

From this [gist](https://gist.github.com/steinwaywhw/a4cd19cda655b8249d908261a62687f8).

<!--more-->

- Use `curl` to get the JSON response for the latest release
- Use `grep` to find the line containing file URL
- Use `cut`  to extract the URL
- Use `wget` to download it


For example, to download the latest release version of [pandoc](https://github.com/jgm/pandoc).

```bash
curl -s https://api.github.com/repos/jgm/pandoc/releases/latest \
| grep "browser_download_url.*deb" \
| cut -d '"' -f 4 \
| wget -qi -
```
