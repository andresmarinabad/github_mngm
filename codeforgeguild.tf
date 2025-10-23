module "tf-modules" {
  source      = "./modules/github"
  name        = "tf-modules"
  description = "Terraform modules"
  visibility  = "public"
  providers = {
    github = github.guild
  }
}

module "ci-actions" {
  source      = "./modules/github"
  name        = "ci-actions"
  description = "GitHub Actions Catalog"
  visibility  = "public"
  providers = {
    github = github.guild
  }
}