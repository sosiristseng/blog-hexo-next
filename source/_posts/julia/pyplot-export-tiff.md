---
title: Export to TIFF in PyPlot.jl (matplotlib)
comments: false
date: 2021-04-21 11:50:27
tags: [pyplot, julia, python, visualization, tiff]
categories: Julia
---

For publications

```julia Julia
fig.savefig("fig.tif", dpi=300, format="tiff", pil_kwargs=Dict("compression" => "tiff_lzw"))
```

```python Python
fig.savefig("fig1.tif", dpi=300, format="tiff", pil_kwargs={"compression" : "tiff_lzw"})
```

<!-- more -->

- Set dpi = 300
- LZW compression
