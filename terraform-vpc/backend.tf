terraform {
  backend "s3" {
    bucket = "terraform-devops29master"
    key    = "dev/terrafile/terraform.tfstate"
    region = "us-east-1"
  }
}