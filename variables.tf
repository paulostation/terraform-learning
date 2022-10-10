variable "github_token" {
  description = "GitHub personal access token"
  type        = string
  sensitive   = true
}

variable "repo_name_list" {
  description = "List of repos being managed."
  type        = set(string)

  default = [
    "tweet-analysis",
    "tweet-dashboard",
    "maze-generation",
    "react-learning",
    "terraform-learning",
  ]
}
