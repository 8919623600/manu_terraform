data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "devops-workstation-image"
  owners           = ["851725330688"]


}
resource "aws_instance" "ec2" {
  ami                     = data.aws_ami.ami.id  # fetching ami id from datasource
  instance_type           = local.business_unit == "sass" ? "t2.micro" : "t2.medium"  
  vpc_security_group_ids  = [aws_security_group.sample_sg.id]
  count                   = 2                        # count is a function which will create the resources as many mentioned on count

  tags = {
    Name          = "Terraform instance-${count.index+1}"
    business_unit = local.business_unit
    manager       = local.manager
    director      = local.director
  } 
}

output "director_name" {
  value = local.director
}
 