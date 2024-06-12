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

  dynamic ingress {
    for_each = var.ingress_rule
    content {
    description     = ingress.value[description]
    from_port       = ingress.value[from_port]
    to_port         = ingress.value[to_port]
    protocol        = ingress.value[protocol]
    cidr_blocks     = ingress.value[cidr_blocks]
    }
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
 