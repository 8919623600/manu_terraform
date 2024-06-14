output "public_subnet" {
    value = module.vpc.public_subnet.*.id

  }

   output "private_subnet" {
    value = module.vpc.private_subnet.*.id
  }