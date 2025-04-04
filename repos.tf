module "github_mngm" {
  source      = "./modules/github"
  name        = "github_mngm"
  description = "Terraform project to manage my resources"
  visibility  = "public"
}

module "agapes" {
  source = "./modules/github"
  name        = "agapes"
  description = "HTML project to publish agapes list"
  visibility  = "public"
  providers = {
    github = github.comu
  }
}