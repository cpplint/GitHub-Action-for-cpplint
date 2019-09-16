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
