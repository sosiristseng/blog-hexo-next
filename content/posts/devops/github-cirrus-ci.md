---
title: "Github Action and Cirrus CI co-op"
subtitle: ""
date: 2021-04-03T14:33:10+08:00
author: ""
authorLink: ""
description: ""

tags: ["cirrus ci", "github"]
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

Run Github actions after successful Cirrus CI runs.

<!--more-->

Run Github actions after successful Cirrus CI runs with [`check_suite`](https://docs.github.com/en/actions/reference/events-that-trigger-workflows#check_suite) trigger.

```yml
on:
  check_suite:
    type: ['completed']

name: Continue after Cirrus CI Complets Successfully
jobs:
  continue:
    name: After Cirrus CI
    if: github.event.check_suite.app.name == 'Cirrus CI' &&  github.event.check_suite.conclusion == 'success'
    runs-on: ubuntu-latest
    steps:
    - name: Continue
      run: echo "Hello after Cirrus CI Completed"
```
