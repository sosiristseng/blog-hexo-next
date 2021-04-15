---
title: "Parallel Matrix build of Gitlab CI/CD"
date: 2021-04-03T14:30:54+08:00
tags: ["gitlab"]
categories: ["DevOps"]
comments: false
---

Test and build in parallel with matrix build in Gitlab CI/CD.

<!--more-->

An example `.gitlab-ci.yml`

```yml
test:
  image: $IMAGE
  script:
    - python -V
  parallel:
    matrix:
      - IMAGE: ['python:3.6-alpine', 'python:3.7-alpine']
```
