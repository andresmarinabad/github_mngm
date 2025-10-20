
resource "github_repository" "repository" {

  name        = var.name
  description = var.description
  visibility  = var.visibility

  allow_auto_merge            = true
  allow_merge_commit          = false
  allow_rebase_merge          = true
  allow_squash_merge          = true
  allow_update_branch         = false
  archived                    = false
  auto_init                   = true
  delete_branch_on_merge      = false
  has_discussions             = false
  has_downloads               = false
  has_issues                  = var.has_issues
  has_projects                = false
  has_wiki                    = false

  archive_on_destroy = false
  vulnerability_alerts = true

  license_template = "mit"

  pages {
    build_type = var.pages.build_type
    source {
      branch = var.pages.source.branch
    }
  }

}

resource "github_branch" "main" {
  repository = github_repository.repository.name
  branch     = "main"
}

resource "github_branch_default" "default"{
  repository = github_repository.repository.name
  branch     = github_branch.main.branch
}

resource "github_issue_label" "labels" {
  for_each = {
    "patch" = { color = "0e8a16", description = "Increment patch" }
    "minor" = { color = "fbca04", description = "Increment minor" }
    "major" = { color = "d73a4a", description = "Increment major" }
  }

  repository  = github_repository.repository.name
  name        = each.key
  color       = each.value.color
  description = each.value.description
}

resource "github_repository_dependabot_security_updates" "dependabot" {
  repository  = github_repository.repository.name
  enabled     = true
}

resource "github_repository_file" "dependabot" {
  repository = github_repository.repository.name
  file       = ".github/dependabot.yml"
  content    = yamlencode({
    version = 2
    updates = [
      {
        package-ecosystem = "pip"
        directory = "/"
        schedule = {
          interval = "monthly"
        }
        open-pull-requests-limit = 5
        labels = ["patch"]
      },
      {
        package-ecosystem = "terraform"
        directory = "/"
        schedule = {
          interval = "monthly"
        }
        open-pull-requests-limit = 5
        labels = ["patch"]
      },
      {
        package-ecosystem = "github-actions"
        directory = "/"
        schedule = {
          interval = "monthly"
        }
        open-pull-requests-limit = 5
        labels = ["patch"]
      }
    ]
  })
  branch      = "main"
  commit_message = "Add Dependabot configuration"
}