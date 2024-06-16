output "PUBLIC_SUBNET_IDS" {
    value = module.vpc.PUBLIC_SUBNET_IDS

  }

output "PRIVATE_SUBNET_IDS" {
    value = module.vpc.PRIVATE_SUBNET_IDS

  }

output "VPC_ID" {
    value = module.vpc.VPC_ID
}

output "SG_ID" {
    value = module.vpc.SG_ID

}

output "sg_status" {
    value = module.vpc.sg_status

}
