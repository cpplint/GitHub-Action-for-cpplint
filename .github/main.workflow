workflow "New workflow" {
  on = "push"
  resolves = ["cpplint command"]
}

action "cpplint command" {
  uses = "cclauss/GitHub-Action-for-cpplint@master"
  args = "cpplint --help "
}
