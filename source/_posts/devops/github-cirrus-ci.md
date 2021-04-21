---
title: "Github Action with Cirrus CI"
date: 2021-04-03T14:33:10+08:00
tags: ["cirrus ci", "github actions", "devops"]
categories: ["DevOps"]
comments: false
---

Run Github actions after successful Cirrus CI runs with [`check_suite`](https://docs.github.com/en/actions/reference/events-that-trigger-workflows#check_suite) trigger.

<!--more-->

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