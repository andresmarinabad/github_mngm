module "tf-modules" {
  source      = "github.com/CodeForgeGuild/tf-modules//modules/github?ref=v0"
  name        = "tf-modules"
  description = "Terraform modules"
  visibility  = "public"
  providers = {
    github = github.guild
  }
}

module "ci-actions" {
  source      = "github.com/CodeForgeGuild/tf-modules//modules/github?ref=v0"
  name        = "ci-actions"
  description = "GitHub Actions Catalog"
  visibility  = "public"
  providers = {
    github = github.guild
  }
}