module "agapes" {
  source      = "github.com/CodeForgeGuild/tf-modules//modules/github?ref=v0"
  name        = "agapes"
  description = "HTML project to publish agapes list"
  visibility  = "public"
  providers = {
    github = github.comu
  }
}

module "grupos" {
  source      = "github.com/CodeForgeGuild/tf-modules//modules/github?ref=v0"
  name        = "grupos"
  description = "HTML project to publish groups list"
  visibility  = "public"
  providers = {
    github = github.comu
  }
}
