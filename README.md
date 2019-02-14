# GitHub Action for running cpplint commands

Each time that new code is pushed into your repo, you can have a [cpplint](https://github.com/cpplint/cpplint) command automatically run.

Example workflow:
* Put the following text into a file named `.github/main.workflow` in your repo):
```hcl
workflow "New workflow" {
  on = "push"
  resolves = ["cpplint command"]
}

action "cpplint command" {
  uses = "cclauss/GitHub-Action-for-cpplint@master"
  args = "cpplint ."
}
```
Or to add other cpplint options to __args =__ above.
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
