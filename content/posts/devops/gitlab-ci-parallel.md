---
title: "Parallel Matgrxi build of Gitlab CI/CD"
subtitle: ""
date: 2021-04-03T14:30:54+08:00
author: ""
authorLink: ""
description: ""

tags: ["gitlab"]
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
comment: false
---

Test and build in parallel with matrix build in Gitlab CI/CD. An example `.gitlab-ci.yml`

```yml
test:
  image: $IMAGE
  script:
    - python -V
  parallel:
    matrix:
      - IMAGE: ['python:3.6-alpine', 'python:3.7-alpine']
```

<!--more-->
