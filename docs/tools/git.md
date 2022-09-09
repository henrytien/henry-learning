# Git 
> Git is software for tracking changes in any set of files, usually used for coordinating work among programmers collaboratively developing source code during software development. Its goals include speed, data integrity, and support for distributed, non-linear workflows.

## 7.11 Git Tools - Submodules
**Starting with Submodules**
```shell
git submodule add https://github.com/chaconinc/DbConnector
git status
git diff --cached DbConnector
git commit -am 'Add DbConnector module'
git push origin master
```

## Notes

**合并某个分支上的单个commit**
```bash
git checkout master
git cherry-pick 62ecb3
```
## Stack Overflow
- [How to copy commits from one branch to another?](https://stackoverflow.com/questions/2474353/how-to-copy-commits-from-one-branch-to-another?noredirect=1&lq=1)
- [What is the HEAD in git?](https://stackoverflow.com/questions/2529971/what-is-the-head-in-git/46350644#46350644)
- [How do I undo the most recent local commits in Git?](https://stackoverflow.com/questions/927358/how-do-i-undo-the-most-recent-local-commits-in-git?rq=1)
- [How do I delete a Git branch locally and remotely?](https://stackoverflow.com/questions/2003505/how-do-i-delete-a-git-branch-locally-and-remotely?rq=1)
  ```bash
  Executive Summary
  $ git push -d <remote_name> <branchname>
  $ git branch -d <branchname>
  Note: In most cases, <remote_name> will be origin.
  ```
## References
- [git](https://git-scm.com/book/en/v2/Getting-Started-About-Version-Control) 
- [How to merge a specific commit in Git](https://stackoverflow.com/questions/881092/how-to-merge-a-specific-commit-in-git)