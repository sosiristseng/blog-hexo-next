---
title: "Tweaking default options in matplotlib"
subtitle: ""
date: 2021-04-23T17:49:13+08:00
author: ""
authorLink: ""
description: ""

tags: [pyplot, julia, python, visualization]
categories: [Julia, Python]

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

Changing [mplstyle and rcparams](https://matplotlib.org/stable/tutorials/introductory/customizing.html) in `matplotlib`.

<!--more-->

## Sauce

1. [Yasser Khan's post](https://web.stanford.edu/~ymkhan/blog/2015/matplotlib_change_default_font/)
1. [mplstyle and rcparams](https://matplotlib.org/stable/tutorials/introductory/customizing.html) for matplotlib
2. [PyPlot.jl](https://github.com/JuliaPy/PyPlot.jl) readme
3. [mplstyle and rcparams](https://matplotlib.org/stable/tutorials/introductory/customizing.html) in `matplotlib` docs.

## Python

```py
import matplotlib as mpl
mpl.rcParams['font.sans-serif'] = "Arial"
mpl.rcParams['font.family'] = "sans-serif"
mpl.rcParams['font.size'] = 12
```

## Julia

For `PyPlot.jl`

```julia
import PyPlot as plt
rcParams = plt.PyDict(plt.matplotlib."rcParams")
rcParams['font.sans-serif'] = "Arial"
rcParams['font.family'] = "sans-serif"
rcParams["font.size"] = 12
```

For `Plots.jl`, there is an internal `pyrcparams` dictionary for `pyplot`(`matplotlib`) backend.

```julia
using Plots
Plots.pyplot()
Plots.pyrcparams["font.size"] = 12
Plots.pyrcparams["font.sans-serif"] = "Arial"
Plots.pyrcparams["font.family"] = "sans-serif"
```
