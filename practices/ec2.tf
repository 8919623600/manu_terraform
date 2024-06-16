#here datasource is defined because it will fetch the properties which are already there in aws

data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "devops-workstation-image"
  owners           = ["851725330688"]


}
resource "aws_instance" "ec2" {
  ami                     = data.aws_ami.ami.id  # fetching ami id from datasource
  instance_type           = "t2.micro"
  vpc_security_group_ids  = [aws_security_group.my_sg.id]
  count                   = 2                        # count is a function which will create the resources as many mentioned on count

  tags = {
    Name = "Terraform instance-${count.index+1}"
  } 
}

resource "aws_security_group" "my_sg" {
  name        = "sg"
  description = "Allow TLS inbound traffic and all outbound traffic"

  ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sg"
  }
}
 

# output "instance_name" {
#   value = aws_instance.ec2.instance_type
  
# }
# output "instance_ami_id"{
#   value = data.aws_ami.ami.id 
# }