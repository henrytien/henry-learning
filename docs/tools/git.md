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

## References
- [git](https://git-scm.com/book/en/v2/Getting-Started-About-Version-Control) 
- [How to merge a specific commit in Git](https://stackoverflow.com/questions/881092/how-to-merge-a-specific-commit-in-git)