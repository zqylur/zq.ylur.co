workflow "New workflow" {
  on = "push"
  resolves = ["GitHub Action for AWS"]
}


action "install deps" {
  uses = "actions/npm@e7aaefe"
  args = "install"
}

action "build" {
  uses = "actions/npm@e7aaefe"
  needs = ["install deps"]
  args = "run build"
}

action "GitHub Action for AWS" {
  uses = "actions/aws/cli@8d31870"
  needs = ["build"]
  secrets = ["AWS_ACCESS_KEY_ID", "AWS_SECRET_ACCESS_KEY"]
  args = "s3 sync ${GITHUB_WORKSPACE}/dist s3://zq.ylur.co"
}
