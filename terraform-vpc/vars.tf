#vpc_variables
variable "VPC_CIDR" {}
variable "PUBLIC_SUBNET_CIDR" {}
variable "PRIVATE_SUBNET_CIDR" {}
variable "ENV" {}
variable "AZ" {}

#default
variable "DEFAULT_VPC_ID" {}
variable "DEFAULT_VPC_CIDR" {}
variable "DEFAULT_VPC_RT_ID" {}

#ec2_variables
variable "instance_type" {}
variable "component" {}
variable "COMPONENTS" {
    default = {
        catalouge = {
            instance_type = "t2.micro"
        },
        cart = {
            instance_type = "t2.medium"
        },
        shopping = {
            instance_type = "t2.micro"
        }
    }
}