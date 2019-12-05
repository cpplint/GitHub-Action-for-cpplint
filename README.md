# GitHub Action for running cpplint commands

Each time that new code is pushed into your repo, you can have a [cpplint](https://github.com/cpplint/cpplint) command automatically run.

Example workflow:
* Put the following text into a file named `.github/workflows/cpplint.yml` in your repo):
```yaml
on: push
name: on push
jobs:
  gitHubActionForCpplint:
    name: GitHub Action for cpplint
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: GitHub Action for cpplint
      uses: cpplint/GitHub-Action-for-cpplint@master
      with:
        args: cpplint --recursive .
```

Or to add other cpplint options to "__args =__" above.

```
Syntax: cpplint.py [--verbose=#] [--output=emacs|eclipse|vs7|junit]
                   [--filter=-x,+y,...]
                   [--counting=total|toplevel|detailed] [--repository=path]
                   [--root=subdir] [--linelength=digits] [--recursive]
                   [--exclude=path]
                   [--headers=ext1,ext2]
                   [--extensions=hpp,cpp,...]
        <file> [file] ...
```

### cpplint_modified_files.yml

[cpplint_modified_files.yml](https://github.com/cpplint/GitHub-Action-for-cpplint/blob/master/.github/workflows/cpplint_modified_files.yml) is an __alternative__, standalone GitHub Action that enables a repo to achieve _gradual compliance_ with cpplint by linting (and compiling) only those files that have been added or modified (vs. origin/master).
1. runs cpplint only on those files that have been modified vs. origin/master.
2. compiles with g++ only those files that have been modified vs. origin/master.
3. other optional filepath verifications may be commented out at the end of this file.
