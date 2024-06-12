# we can refere from https://developer.hashicorp.com/terraform/language/modules/sources
# we cannot parametrized the source link
# if we want to download the file from some specific branch how to do it. By terrafile it is possible
# it download our choice of branch of the backend module code from repo and keep it locally available to the root module



module "vpc" {
  source = "./vendor/modules/vpc/"
}