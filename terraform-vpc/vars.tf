#vpc_variables
variable "VPC_CIDR" {}
variable "PUBLIC_SUBNET_CIDR" {}
variable "PRIVATE_SUBNET_CIDR" {}
variable "AZ" {}

#default
variable "DEFAULT_VPC_ID" {}
variable "DEFAULT_VPC_CIDR" {}
variable "DEFAULT_VPC_RT_ID" {}

#ec2
variable "instance_type" {}


#common
variable "ENV" {}
variable "SG_ID" {}



