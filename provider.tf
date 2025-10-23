terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.6.0"
    }
  }

  backend "local" {}
  
}

provider "github" {
  token = var.token
  owner = "andresmarinabad"
}

provider "github" {
  alias = "comu"
  token = var.token
  owner = "Comu10"
}

provider "github" {
  alias = "guild"
  token = var.token
  owner = "CodeForgeGuild"
}