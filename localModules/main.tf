# from main.tf it will call ec2 and sg modules


module "ec2" {
    source = "./ec2"
    sg = module.sg.sgid
}

module "sg" {
    source ="./sg"
}