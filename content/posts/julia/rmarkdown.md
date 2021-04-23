---
title: "Julia in R markdown"
subtitle: ""
date: 2021-04-03T13:18:16+08:00
author: ""
authorLink: ""
description: ""

tags: ["r markdown"]
categories: ["Julia", "Study"]

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

Running Julia code chunks in R markdown.

<!--more-->

## Install Julia binding in the terminal

```r
install.packages("JuliaCall")
```

## Using Julia runtime in R markdown

``````
```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
library(JuliaCall)
```
``````

And you can add executable code chunks in your R markdown report.

``````
```{julia}
a = sqrt(2);  # the semicolon inhibits printing
```
``````

## Resources

- [R markdown cookbook](https://bookdown.org/yihui/rmarkdown-cookbook/)
- [Julia in R markdown0](https://cran.r-project.org/web/packages/JuliaCall/vignettes/Julia_in_RMarkdown.html)
- [Alternative to Latex for High Quality Reports with RMarkdown](https://speakerdeck.com/rlesur/alternative-to-latex-for-high-quality-reports-with-rmarkdown)
