resource "github_repository" "repository" {

  name = var.repository_name

  allow_merge_commit = false

}

resource "github_branch_protection" "default_rules" {

  repository_id = github_repository.repository.node_id

  pattern                 = "master"
  enforce_admins          = true
  allows_deletions        = false
  require_signed_commits  = false
  required_linear_history = true

  required_status_checks {
    strict   = false
    contexts = ["ci/travis"]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews = true
  }

}
