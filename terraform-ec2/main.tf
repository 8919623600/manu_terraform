module "ec2" {
    source = "./vendor/modules/ec2/"
    instance_type = var.instance_type
}
