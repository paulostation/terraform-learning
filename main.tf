terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.3.0"
    }
  }
}

provider "github" {
  token = var.github_token
}

module "branch_protection_rules" {
  source = "./modules/branch_protection_rules"

  for_each = var.repo_name_list

  repository_name = each.value

}
