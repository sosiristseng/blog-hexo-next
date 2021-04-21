---
title: "Git commands"
date: 2020-11-16T11:31:38+08:00
tags: ["git", "devops"]
categories: ["DevOps"]
comments: true
---

Commonly used git commands

<!--more-->

## Reference

- [Git reference](https://git-scm.com/docs)
- [Git cheatsheet (pdf)](https://training.github.com/downloads/github-git-cheat-sheet.pdf)
- [Common git commands](http://guides.beanstalkapp.com/version-control/common-git-commands.html)

## Ordinary workflows

`HEAD`: your current working repo status.

### Create repos

```bash
git init  # Create a git worktree (repo) from current working directory

git clone <url>  # Clone a git repo from a remote repository
```

### Make changes and commit

```bash
git status      # The current state of the repository.

git add <file>  # Add a new or edited file to the staging area. i.e. telling git to track this file

git add -A      # Track all files at once

git commit -m "Commit message" # Commit staged (added) file

git commit -am "Commit message" # Commit modified files without having to run git add beforehand

git revert <SHA>                # Make a counter commit to undo the changes. The tracked files will go back to the <SHA> commit.
```

### Push and pull

```bash
git fetch # Download objects and refs from another repository without pull in the changes

git push <remote> <branch-name> # Push commits in to remote

git push --set-upstream <remote> <name-of-your-branch>  # Setup remote url before push

git pull <remote>  # Pull changes from the remote
```

### Stash

To temporarily store untracked files.

```bash
git stash -u   # Store current work with untracked files

git stash pop  # Bring stashed work back to the working directory
```

### Branches

```bash
git branch <branch_name>    # Create a new branch

git branch -a               # List all branches

git branch -d <branch_name> # Delete a branch

git checkout <branch_name>    # checkout an existing branch

git checkout -b <branch_name> # Create a new branch and checkout it

git switch <branch_name>    # Switch to a specified branch

git merge  <branch_name>    # Merge the branch into the current branch
```

## Orphan branches

Orphan branches are unrelated to others in history. Usefule in some occasions like the `gh-pages` orphan branch for GitHub pages.

```bash
git switch --orphan <branchname>  # Create a orphan branch and switch to it
```

## Git submodules

See also [gitaarik's Gist](https://gist.github.com/gitaarik/8735255) for more explanation.

### Adding a submodule

Adding the reference of other git project(s) instead the whole code base.

(Of course, the code is still copied over but version control happens on the respective origins)

```bash
git submodule add ${GIT_URL} ${DIR}
git submodule update --init --recursive
```

Or you can also use Gitkraken to add a submodule in the GUI.

Add you will see the reference in the file `.gitmodules`. For instance,

`.gitmodules`
```
[submodule "themes/CodeIT"]
	path = themes/CodeIT
	url = https://github.com/sunt-programator/CodeIT.git
```

### Update all Git submodules to the latest commit

From [StackOverflow](https://stackoverflow.com/questions/5828324/update-git-submodule-to-latest-commit-on-origin/5828396#5828396)

```bash
git submodule update --remote --merge
```

### Auto-update Git submodules by GitHub dependabot

From the [dependabot documentation](https://docs.github.com/en/github/administering-a-repository/keeping-your-dependencies-updated-automatically)

Dependabot detects updates of the submodule(s) and automatically generates PRs, and get the updates dependency tested (if you have setup CI).

Create a file `${YOUR_PROJECT}/.github/dependabot.yml` like this.

```yml
version: 2
updates:
  - package-ecosystem: "gitsubmodule"
    directory: "/"
    schedule:
      interval: "daily"
    labels:
    - "dependencies"
```
