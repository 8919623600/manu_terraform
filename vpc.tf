

resource "aws_vpc" "vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_instance" "ec2" {
  ami                     = "ami-0174d086840117932"
  instance_type           = "t2.micro"
  vpc_security_group_ids  = [aws_security_group.allow_tls.id]

  tags = {
    Name = "Terraform instance"
  } 
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
 

  tags = {
    Name = "allow_tls"
  }
}

resource "aws_security_group" "my_sg" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"

  ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_blocks   = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_blocks   = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}
 

output "cidr_block" {
  value = aws_vpc.vpc.cidr_block
  }

output "instance_name" {
  value = aws_instance.ec2.instance_type
  
}
