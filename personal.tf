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

module "familyprogressweb" {
  source      = "./modules/github"
  name        = "familyprogressweb"
  description = "Show your kids next birthday within a friendly interface"
  visibility  = "public"

  has_issues = true
}

module "andresmarinabad" {
  source      = "./modules/github"
  name        = "andresmarinabad"
  description = "My personal portfolio page in GitHub"
  visibility  = "public"
}

module "FamilyLedger" {
  source      = "./modules/github"
  name        = "FamilyLedger"
  description = "FamilyLedger is a family accounting app that imports transactions from a CSV file and organizes them into an Excel spreadsheet, grouping expenses by categories to help track and manage the family budget."
  visibility  = "public"
}

module "photocalendar" {
  source      = "./modules/github"
  name        = "photocalendar"
  description = "Create an A3 pdf photo canlendar with python and LaTeX"
  visibility  = "public"
}

module "fotosblog" {
  source      = "./modules/github"
  name        = "fotosblog"
  description = "Download pictures from my kids blog's school"
  visibility  = "public"
}