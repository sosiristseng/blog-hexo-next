---
title: "Command line tricks"
subtitle: ""
date: 2020-10-21T17:24:21+08:00
tags: ["linux", "command line"]
categories: ["Linux"]

author: ""
authorLink: ""
description: ""

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

Some command line tricks for Linux.

<!--more-->

## Passing arguments to a command from a text file

Using:
- `sed`
- `xargs`

For example, to install two lists of packages in Ubuntu:

```bash
cat list1.txt list2.txt | sed 's/#.*$//' | xargs sudo apt install
```

- `xargs` takes the output from `sed` as arguments to `apt`
- `sed 's/#.*$//'` filters out those lines after `#`. So the `list2.txt` can have comments like the following
```txt
# Comment

item1
item2  # A comment after an item
    item3  # indent supported
```

## Passing multiple lines of string

Using heredoc to pass the string between two delimiters (e.g. `EOF`)

```bash
cat << "EOF" >> ~/.xprofile
# ~/.xprofile
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
ibus-daemon -drx
EOF
```

Will append the following lines in `~/.xprofile`:

```bash
# ~/.xprofile
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
ibus-daemon -drx
```

## nohup: Do not hang up in SSH sessions

Use `nohup` to run background process(es) uninterruptedly even when going offline in a remote SSH session.

```bash
nohup mycmd &
```

The output will be in `nohup.out` by default. If you want to customize the output location, just redirect it:

```bash
nohup mycmd &> log.txt &
```

You can also lower the priority for the background process

```bash
nohup nice mycmd &
```

When you're done, you can kill the process by the proccess ID (PID)

```bash
ps -aux | grep "runoob.sh"

kill PID
```

### Reference

- [Bird's Linux Manual](http://linux.vbird.org/linux_basic/0440processcontrol.php#nohup)
- [GT Wang](https://blog.gtwang.org/linux/linux-nohup-command-tutorial/)
