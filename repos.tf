module "github_mngm" {
  source      = "./modules/github"
  name        = "github_mngm"
  description = "Terraform project to manage my resources"
  visibility  = "public"
}

module "telegram_bot" {
  source      = "./modules/github"
  name        = "telegram_bot"
  description = "Python bot for telegram with terraform form infra deploy"
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

module "grupos" {
  source = "./modules/github"
  name        = "grupos"
  description = "HTML project to publish groups list"
  visibility  = "public"
  providers = {
    github = github.comu
  }
}