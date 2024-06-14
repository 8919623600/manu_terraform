VPC_CIDR              = "10.0.0.0/24"
PUBLIC_SUBNET_CIDR    = ["10.0.0.0/26" , "10.0.0.64/26"]
PRIVATE_SUBNET_CIDR   = ["10.0.0.128/26" , "10.0.0.192/26"]
ENV                   = "Dev"
AZ                    = ["us-east-1a" , "us-east-1b"]
DEFAULT_VPC_ID        = "vpc-0501ecd6284eb3977"
DEFAULT_VPC_CIDR      = "172.31.0.0/16"
DEFAULT_VPC_RT_ID     = "rtb-029b96c5545c0e229"
instance_type         = "t2.micro"
public_subnet_id      = module.vpc.public_subnet_id

