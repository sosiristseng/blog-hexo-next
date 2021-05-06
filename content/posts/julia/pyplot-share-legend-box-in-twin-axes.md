---
title: "Sharing the Legend Box in Twin Axes in matplotlib"
subtitle: ""
date: 2021-05-06T23:46:03+08:00
draft: false
author: ""
authorLink: ""
description: ""

tags: [pyplotjl, julia, visualization]
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
---

- Capture line plot objects from both axes.
- Call `legend()` for both(all) line plot objects.

```julia
x1 = 1:10

import PyPlot as plt

fig, ax1 = plt.subplots()

l1 = ax1.plot(x1, x1)

ax2 = ax1.twinx()
l2= ax2.plot(x1, exp.(x1))

ax1.legend([first(l1), first(l2)], ["x", "exp(x)"])
```

<!--more-->
