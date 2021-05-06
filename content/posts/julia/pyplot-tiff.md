---
title: "Export to TIFF in PyPlot.jl (matplotlib)"
subtitle: ""
date: 2021-04-23T17:51:59+08:00
author: ""
authorLink: ""
description: ""

tags: [pyplotjl, julia, python, visualization, tiff]
categories: [Julia]

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

Export to TIFF image for publications.

```julia
fig.savefig("fig.tif", dpi=300, format="tiff", pil_kwargs=Dict("compression" => "tiff_lzw"))
```

```python
fig.savefig("fig1.tif", dpi=300, format="tiff", pil_kwargs={"compression" : "tiff_lzw"})
```

<!--more-->

- Set dpi = 300
- LZW compression
