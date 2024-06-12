# here datasource is defined because it willfetch the properties which are already there in aws

data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "devops-workstation-image"
  owners           = ["851725330688"]


}
resource "aws_instance" "ec2" {
  ami                     = data.aws_ami.ami.id  # fetching ami id from datasource
  instance_type           = var.instance_type
  
  tags = {
    name = var.component
  }

}
