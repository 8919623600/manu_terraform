provider "aws" {}


terraform {
  backend "s3" {
    bucket = "terraform-devops29master"
    key    = "dev/mp/terraform.tfstate"
    region = "us-east-1"
  }
}