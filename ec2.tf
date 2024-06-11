#here datasource is defined because it willfetch the properties which are already there in aws


data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "learn-linux-on-centos7$"
  owners           = ["851725330688"]


}
resource "aws_instance" "ec2" {
  ami                     = [data.aws_ami.ami.id]    # fetching ami id from datasource
  instance_type           = "t2.micro"
  vpc_security_group_ids  = [aws_security_group.my_sg.id]

  tags = {
    Name = "Terraform instance"
  } 
}

resource "aws_security_group" "my_sg" {
  name        = "sg"
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
    Name = "sg"
  }
}
 

output "instance_name" {
  value = aws_instance.ec2.instance_type
  
}