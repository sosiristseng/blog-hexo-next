---
title: Editing Git History
comments: false
date: 2021-04-21 11:28:33
tags: [git]
categories: DevOps
---

Changing git commit history for

1. reverting changes
2. a cleaner list of commits
3. removing sensitive / big chunch of data

⚠️ If you already pushed your changes to remote (e.g. GitHub), you'll push modified history by force (forced push), which will break others workflow using the very remote.

<!-- more -->

## Git reset

- Mixed reset (default): discard untracked files, but the changed files are preserved but not marked for commit.
- Hard reset: Resets the index and working tree. Any changes to tracked files in the working tree since <commit> are discarded.
- Soft reset: Does not touch the index file or the working tree at all (but resets the head to <commit>)

```bash
git reset --hard <SHA>   # Reset git history to a specific commit

git reset HEAD~          # Reset state to the previous commit (~)
```

## Removing large binary blobs

### BFG Repo-Cleaner
- [Azure DevOps | Rebase and force push](https://docs.microsoft.com/en-us/azure/devops/repos/git/remove-binaries?view=azure-devops)
- [GitHub docs | BFG repo cleaner](https://docs.github.com/en/github/authenticating-to-github/removing-sensitive-data-from-a-repository)
- [Phase 2 | Removing large blobs](https://www.phase2technology.com/blog/removing-large-files-git-bfg)

The [BFG Repo-Cleaner](https://rtyley.github.io/bfg-repo-cleaner/) is a faster and simpler alternative to `git filter-branch` for removing large file records (blobs)

1. Download [BFG Repo-Cleaner](https://rtyley.github.io/bfg-repo-cleaner/#download).
2. Clone the full git database
   ```bash
   git clone --mirror git://example.com/some-big-repo.git
   ```
3. Make a backup of it just in case
   ```bash
   cp -r some-big-repo some-big-repo-bak
   ```
4. Strip blobs from history
   ```bash
   bfg --strip-biggest-blobs 100 your-repo.git
   ```
5. Delete the blobs from the database. Check your repo size afterwards.
   ```bash
   cd some-big-repo.git && git reflog expire --expire=now --all && git gc --prune=now --aggressive
   ```
6. Push the changes the remote
   ```bash
   git push
   ```

### Git filter repo

[Git filter-repo](https://github.com/newren/git-filter-repo) is a versatile tool for rewriting history written in a single-file python script.

## Purge Git database entirely

Erase all history in the Git repo to start over with all the current files. This also clears big file records in the Git database.

```bash
git checkout --orphan newBranch  # Creata an orphan branch to hold the files
git add -A  && git commit        # Add all files and commit them
git branch -D main               # Deletes the main branch
git branch -m main               # Rename the current orphan branch to main
git push -f origin main          # Force push main branch to remote (e.g. github)
git gc --aggressive --prune=all  # Remove the old files in the database
```
