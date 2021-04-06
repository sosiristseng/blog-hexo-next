---
title: Hugo blog setup and deployment
subtitle: ""
description: "Hugo blog setup, content management, and deployment"
tags: ["github", "gitlab", "hugo"]
categories: ["WebDev"]
date: 2020-11-30T21:43:55+08:00

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

## Using my template

{{< admonition type=tip >}}

If you prefer a do-it-yourself way to set up your Hugo blog, please follow the [theme documentation](https://codeit.suntprogramator.dev/theme-documentation-basics/) instead.

{{< /admonition >}}

Copy [My template site](https://github.com/sosiristseng/template-hugo-codeit) for a quick start. It includes
- Beautiful [CodeIT](https://github.com/sunt-programator/CodeIT/) theme installed as a Git submodule.
- Some useful shortcodes were added from color your world theme.
- CI/CD routine for both GitHub actions and GitLab CICD. The website will be built and deploy automatically upon pushing the changes.

{{< admonition type=note >}}
After copying, you need to change `baseURL` in `config.toml`.

```toml
baseURL = "www.example.com/" # With the trailing slash
```
{{< /admonition >}}

## Hosting on GitHub pages

Click the {{< kbd "Use the template" >}} button at [my template repository](https://github.com/sosiristseng/template-hugo-codeit).

The website will be deployed on the `gh-pages` branch. You need to activate GitHub pages in the repository settings, pointing to root folder in the `gh-pages` branch.

The CI file in my site, as an example:

```yml
name: github pages

on:
  push:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - name: checkout master
      uses: actions/checkout@v2
      with:
        submodules: true  # Fetch Hugo themes (true OR recursive)
        fetch-depth: 0    # Fetch all history for .GitInfo and .Lastmod
    - name: Setup Hugo
      uses: peaceiris/actions-hugo@v2
      with:
        hugo-version: 'latest'
        extended: true
    - name: Build
      run: hugo --minify
    - name: Deploy
      uses: peaceiris/actions-gh-pages@v3
      with:
        github_token: ${{ secrets.GITHUB_TOKEN }}
        publish_dir: ./public
        full_commit_message: ${{ github.event.head_commit.message }}
        force_orphan: false
```

The major pro of GitHub pages is that the acccess is [pretty fast](https://www.jeremymorgan.com/blog/programming/how-fast-are-github-pages/) thanks to the CDN infrastructure.

## Hosting on GitLab pages

<!-- markdown-link-check-disable-next-line -->
Click [import project](https://gitlab.com/projects/new#import_project) and select `Repo by URL`, paste the git url from [my template](https://github.com/sosiristseng/template-hugo-codeit).

The CI/CD part is coded on `.gitlab-ci.yml`. For example:

```yaml
image: registry.gitlab.com/pages/hugo:latest

variables:
  GIT_SUBMODULE_STRATEGY: recursive
  HUGO_BASE_URL: 'https://sosiristseng.gitlab.io/'

before_script:
- apk add --update --no-cache git

test:
  script:
  - hugo -b ${HUGO_BASE_URL} -v
  except:
  - main

pages:
  script:
  - hugo --gc --minify -b ${HUGO_BASE_URL}
  - apk add --update --no-cache brotli
  - find public -type f -regex '.*\.\(htm\|html\|txt\|text\|js\|css\|svg\|xml\)$' -exec gzip   -f -k {} \; || echo 'Gzip failed. Skipping...'
  - find public -type f -regex '.*\.\(htm\|html\|txt\|text\|js\|css\|svg\|xml\)$' -exec brotli -f -k {} \; || echo 'Brotli failed. Skipping...'
  artifacts:
    paths:
    - public
  only:
  - main
```

{{< admonition type=note >}}
You need to modify the `HUGO_BASE_URL` entry in `.gitlab-ci.yml` to your domain for the website to build properly.
{{< /admonition >}}

The major pro GitLab pages is that there are more [custom domains](https://docs.gitlab.com/ee/user/project/pages/custom_domains_ssl_tls_certification/) and [access levels](https://docs.gitlab.com/ee/user/project/pages/pages_access_control.html). You can internalize your website , requiring logging in to an approved account to visit.

## See also

- [Scivision](https://www.scivision.dev/gitlab-pages-vs-github-pages/)
- [A recent reddit post](https://www.reddit.com/r/github/comments/jqf3eu/question_gitlab_pages_vs_github_pages/)
