---
title: "Hosting your (static) websites"
subtitle: ""
date: 2021-05-11T21:51:04+08:00
draft: false
author: ""
authorLink: ""
description: ""

tags: ["github", "gitlab", "static site generator"]
categories: ["WebDev"]

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

Hosting static websites by:
- GitHub pages
- GitLab pages
- Netlify
- Cloudflare pages

<!--more-->

## GitHub pages

[Github pages docs](https://docs.github.com/en/pages) about creating a website from a GitHub repository.

- You can find `GitHub pages` in the repository settings.
- [Fast connection](https://www.jeremymorgan.com/blog/programming/how-fast-are-github-pages/) through its CDN infrastructure.

## GitLab pages

[GitLab pages docs](https://docs.gitlab.com/ee/user/project/pages/) about creating a website from a GitLab repository.

- Pages is set through `pages` artifacts
- [Custom domains](https://docs.gitlab.com/ee/user/project/pages/custom_domains_ssl_tls_certification/) with SSL/TLS cert.
- [Access control](https://docs.gitlab.com/ee/user/project/pages/pages_access_control.html) enalbe private pages requiring logins.

## Netlify

[Netlify](https://www.netlify.com/) sources GitHub / GitLab repositories to build and host websites.

- Build, deploy, and manage websites
- Fast via the CDN structure
- Custom domains
- Preview the result in your development branch
- Rollback

## Cloudflare pages

[Cloudflare pages](https://pages.cloudflare.com) sources GitHub repositories (GitLab ones are WIP) to build and host websites.

- Fast via the CDN structure
- Unlimited collaborates for free
- Preview the result in your development branch
- Built-in, free web analytics

## See also

- [Jace.pro's post](https://jace.pro/post/2020-12-17-cloudflare-pages-netlify-zeit-github-pages-and-gitlab-pages-where-to-host/) about hosting options.
- [Scivision's post](https://www.scivision.dev/gitlab-pages-vs-github-pages/)
- [A Reddit post](https://www.reddit.com/r/github/comments/jqf3eu/question_gitlab_pages_vs_github_pages/)
