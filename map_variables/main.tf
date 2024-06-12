# from main.tf it will call ec2 and sg modules


module "ec2" {
    for_each      = var.COMPONENTS
    
    source        = "./ec2"
    component     = each.key
    instance_type = each.value.instance_type

   }
