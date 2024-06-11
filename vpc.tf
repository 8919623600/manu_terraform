

resource "aws_vpc" "vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "tf-example"
  }
}

output "cidr_block" {
  value = aws_vpc.vpc.cidr_block
  }

