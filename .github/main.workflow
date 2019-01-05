workflow "New workflow" {
  on = "push"
  resolves = ["GitHub Action for AWS"]
}

action "GitHub Action for npm" {
  uses = "actions/npm@e7aaefe"
  args = "build"
}

action "GitHub Action for AWS" {
  uses = "actions/aws/cli@8d31870"
  needs = ["GitHub Action for npm"]
  secrets = ["AWS_ACCESS_KEY_ID", "AWS_SECRET_ACCESS_KEY"]
  args = "sns create-topic --name my-topic"
}
