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
# variable "subnet_id" {}
variable "pub_subnet_id" {}
variable "private_subnet_id" {}
variable "public_subnet" {}

variable "public_subnet_id" {}

