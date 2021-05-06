---
title: "Collect GitHub Issues to a Markdown file"
subtitle: ""
date: 2021-05-06T23:33:15+08:00
draft: false
author: ""
authorLink: ""
description: ""

tags: ["github", "devops", "markdown"]
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
---

[gh2md](https://github.com/mattduck/gh2md): Export Github repository issues and pull requests to a single, readable markdown file.

<!--more-->

An example  GitHub workflow file `.github/workflows/issues2md.yml`

```yml
# .github/workflows/issues2md.yml
name: Issues2Markdown
on:
  # issues:
  # issue_comment:
  workflow_dispatch: # manually run this workflow
  schedule:
    - cron: "0 0 * * *"  # 00:00 every day
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
      with:
        persist-credentials: false # otherwise, the token used is the GITHUB_TOKEN, instead of your personal token
        fetch-depth: 0             # otherwise, you will failed to push refs to dest repo.
    - uses: actions/cache@v2
      with:
        path: ~/.cache/pip
        key: ${{ runner.os }}-pip-
    - name: Install GitHub Issue to Markdown
      run:  pip3 install --user --upgrade setuptools gh2md
    - name: Backup github issues to a markdown file.
      run:  $HOME/.local/bin/gh2md $GITHUB_REPOSITORY README.md --token ${{ secrets.GITHUB_TOKEN }}
    - name: Add and Commit files
      run: |
        git add README.md
        git config --local user.email "action@github.com"
        git config --local user.name "GitHub Action"
        git commit -m "Output all issues" -a
    - name: Push changes
      uses: ad-m/github-push-action@master
      with:
        github_token: ${{ secrets.GITHUB_TOKEN }}
        branch: main
```
