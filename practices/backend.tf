terraform {
  backend "s3" {
    bucket = "terraform-devops29master"
    key    = "dev/terraform/terraform.tfstate"
    region = "us-east-1"
  }
}