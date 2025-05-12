module "agapes" {
  source      = "./modules/github"
  name        = "agapes"
  description = "HTML project to publish agapes list"
  visibility  = "public"
  providers = {
    github = github.comu
  }
}

module "grupos" {
  source      = "./modules/github"
  name        = "grupos"
  description = "HTML project to publish groups list"
  visibility  = "public"
  providers = {
    github = github.comu
  }
}
