# GitHub Action for running cpplint commands

Each time that new code is pushed into your repo, you can have a [cpplint](https://github.com/cpplint/cpplint) command automatically run.

Example workflow:
* Put the following text into a file named `.github/workflows/cpplint.yml` in your repo):
```yaml
name: cpplint
on: [push, pull_request]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - uses: actions/setup-python@v1
    - run: pip install cpplint
    - run: cpplint --recursive .
```
Customize the final line to match your requirements.
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
