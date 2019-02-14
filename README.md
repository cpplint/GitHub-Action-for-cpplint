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
Or to add other [cpplint options](http://flake8.pycqa.org) to __args =__ above.
