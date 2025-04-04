terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.6.0"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "andres-marin-abad"

    workspaces {
      name = "github-mngm"
    }
  }
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