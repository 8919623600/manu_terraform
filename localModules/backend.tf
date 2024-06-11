provider "aws" {}


terraform {
  backend "s3" {
    bucket = "terraform-devops29master"
    key    = "dev/localmodules/terraform.tfstate"
    region = "us-east-1"
  }
}