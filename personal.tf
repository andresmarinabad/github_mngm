module "github_mngm" {
  source      = "github.com/CodeForgeGuild/tf-modules//modules/github?ref=v0"
  name        = "github_mngm"
  description = "Terraform project to manage my resources"
  visibility  = "public"
}

module "telegram_bot" {
  source      = "github.com/CodeForgeGuild/tf-modules//modules/github?ref=v0.1"
  name        = "telegram_bot"
  description = "Python bot for telegram with terraform form infra deploy"
  visibility  = "public"
}

module "quinigol_bot" {
  source      = "github.com/CodeForgeGuild/tf-modules//modules/github?ref=v0"
  name        = "quiniela_quinigol_bot"
  description = "Python bot for telegram with terraform. Calculates quiniela results for a group of friends"
  visibility  = "public"
}

module "familyprogressweb" {
  source      = "github.com/CodeForgeGuild/tf-modules//modules/github?ref=v0"
  name        = "familyprogressweb"
  description = "Show your kids next birthday within a friendly interface"
  visibility  = "public"

  has_issues = true
}

module "andresmarinabad" {
  source      = "github.com/CodeForgeGuild/tf-modules//modules/github?ref=v0"
  name        = "andresmarinabad"
  description = "My personal portfolio page in GitHub"
  visibility  = "public"
}

module "FamilyLedger" {
  source      = "github.com/CodeForgeGuild/tf-modules//modules/github?ref=v0"
  name        = "FamilyLedger"
  description = "FamilyLedger is a family accounting app that imports transactions from a CSV file and organizes them into an Excel spreadsheet, grouping expenses by categories to help track and manage the family budget."
  visibility  = "public"
}

module "photocalendar" {
  source      = "github.com/CodeForgeGuild/tf-modules//modules/github?ref=v0"
  name        = "photocalendar"
  description = "Create an A3 pdf photo canlendar with python and LaTeX"
  visibility  = "public"
}

module "fotosblog" {
  source      = "github.com/CodeForgeGuild/tf-modules//modules/github?ref=v0"
  name        = "fotosblog"
  description = "Download pictures from my kids blog's school"
  visibility  = "public"
}