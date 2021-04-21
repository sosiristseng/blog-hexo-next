---
title: Change default font in PyPlot.jl (matplotlib)
comments: false
date: 2021-04-21 11:21:56
tags: [pyplot, julia, python, visualization]
categories: [Julia]
---

By changing [mplstyle and rcparams](https://matplotlib.org/stable/tutorials/introductory/customizing.html) for matplotlib.

<!-- more -->

```py Python
import matplotlib as mpl
mpl.rcParams['font.sans-serif'] = "Arial"
mpl.rcParams['font.family'] = "sans-serif"
mpl.rcParams['font.size'] = 15
```

```julia Julia
import PyPlot as plt  # For version >= 1.6
rcParams = plt.PyDict(plt.matplotlib."rcParams")
rcParams['font.sans-serif'] = "Arial"
rcParams['font.family'] = "sans-serif"
rcParams["font.size"] = 15
```

## Sauce

1. [Yasser Khan's post](https://web.stanford.edu/~ymkhan/blog/2015/matplotlib_change_default_font/)
1. [mplstyle and rcparams](https://matplotlib.org/stable/tutorials/introductory/customizing.html) for matplotlib
2. [PyPlot.jl](https://github.com/JuliaPy/PyPlot.jl) readme
