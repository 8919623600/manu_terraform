provider "aws" {}

terraform {
  backend "s3" {
    bucket = "terraform-devops29master "
    key    = "dev/terraform"
    region = "us-east-1"
  }
}


resource "aws_vpc" "vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_instance" "ec2" {
  ami                     = "ami-0174d086840117932"
  instance_type           = "t2.micro"

  tags = {
    Name = "Terraform instance"
  } 
}
 

output "cidr_block" {
  value = aws_vpc.vpc.cidr_block
  }

output "instance_name" {
  value = aws_instance.ec2.instance_type
  
}
